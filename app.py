from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def home():
    images = [
        "static/suit1.jpg", "static/suit2.jpg", "static/suit3.jpg",
        "static/suit4.jpg", "static/suit5.jpg", "static/suit6.jpg",
        "static/suit7.jpg", "static/suit8.jpg", "static/suit9.jpg",
        "static/suit10.jpg"
    ]
    instagram_url = "https://www.instagram.com/kubik.rubik.ukraine?igsh=Mm1qdnNpeTI3cnY1"
    return render_template('index.html', images=images, instagram_url=instagram_url)

if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0", port=5000)