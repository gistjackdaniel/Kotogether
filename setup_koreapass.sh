#!/bin/bash

# KoreaPass 프로젝트 디렉토리 생성 스크립트

mkdir -p KoreaPass/app/src/main/java/com/example/koreapass/navigation
mkdir -p KoreaPass/app/src/main/java/com/example/koreapass/ui/theme
mkdir -p KoreaPass/app/src/main/java/com/example/koreapass/ui/tab1/components
mkdir -p KoreaPass/app/src/main/java/com/example/koreapass/ui/tab2/components
mkdir -p KoreaPass/app/src/main/java/com/example/koreapass/ui/tab3/components
mkdir -p KoreaPass/app/src/main/java/com/example/koreapass/model
mkdir -p KoreaPass/app/src/main/java/com/example/koreapass/network
mkdir -p KoreaPass/app/src/main/java/com/example/koreapass/utils
mkdir -p KoreaPass/app/src/main/res/drawable
mkdir -p KoreaPass/app/src/main/res/values
mkdir -p KoreaPass/app/src/main/res/mipmap
mkdir -p KoreaPass/app/src/test

# 기본 파일 생성
touch KoreaPass/.gitignore
touch KoreaPass/build.gradle
touch KoreaPass/settings.gradle

# 필수 파일 생성
cat > KoreaPass/app/src/main/AndroidManifest.xml << 'EOF'
<manifest package="com.example.koreapass"
    xmlns:android="http://schemas.android.com/apk/res/android">

    <application
        android:allowBackup="true"
        android:label="KoreaPass"
        android:theme="@style/Theme.KoreaPass">
        <activity android:name=".MainActivity">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>
    </application>

</manifest>
EOF

cat > KoreaPass/app/src/main/java/com/example/koreapass/MainActivity.kt << 'EOF'
package com.example.koreapass

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            // TODO: App Content
        }
    }
}
EOF

# 안내 메시지
echo ""
echo "✅ KoreaPass 프로젝트 디렉토리 생성 완료!"
echo "이제 Android Studio에서 'KoreaPass' 디렉토리를 열어 시작하세요."
echo "공동 작업자는 각자 'tab1', 'tab2', 'tab3' 디렉토리에서 작업하면 됩니다."

