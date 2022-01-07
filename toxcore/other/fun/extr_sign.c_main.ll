; ModuleID = '/home/carl/AnghaBench/toxcore/other/fun/extr_sign.c_main.c'
source_filename = "/home/carl/AnghaBench/toxcore/other/fun/extr_sign.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_sign_ed25519_PUBLICKEYBYTES = common dso_local global i32 0, align 4
@crypto_sign_ed25519_SECRETKEYBYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Public key:\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%02hhX\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\0ASecret key:\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@crypto_sign_ed25519_BYTES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Signed successfully.\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Failed checking sig.\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Checked successfully.\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %24 = load i32, i32* @crypto_sign_ed25519_PUBLICKEYBYTES, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %6, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %7, align 8
  %28 = load i32, i32* @crypto_sign_ed25519_SECRETKEYBYTES, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %8, align 8
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %76

33:                                               ; preds = %2
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 103
  br i1 %40, label %41, label %76

41:                                               ; preds = %33
  %42 = call i32 @crypto_sign_ed25519_keypair(i8* %27, i8* %30)
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %55, %41
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @crypto_sign_ed25519_PUBLICKEYBYTES, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %27, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %44

58:                                               ; preds = %44
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %71, %58
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @crypto_sign_ed25519_SECRETKEYBYTES, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %30, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %60

74:                                               ; preds = %60
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %33, %2
  %77 = load i32, i32* %4, align 4
  %78 = icmp eq i32 %77, 5
  br i1 %78, label %79, label %151

79:                                               ; preds = %76
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 1
  %82 = load i8*, i8** %81, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 115
  br i1 %86, label %87, label %151

87:                                               ; preds = %79
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @hex_string_to_bin(i8* %90)
  store i8* %91, i8** %10, align 8
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 3
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @load_file(i8* %94, i8** %11)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %212

99:                                               ; preds = %87
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* @crypto_sign_ed25519_BYTES, align 4
  %102 = mul nsw i32 %101, 2
  %103 = add nsw i32 %100, %102
  %104 = call i8* @malloc(i32 %103)
  store i8* %104, i8** %14, align 8
  %105 = load i8*, i8** %14, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load i8*, i8** %10, align 8
  %109 = call i32 @crypto_sign_ed25519(i8* %105, i64* %13, i8* %106, i32 %107, i8* %108)
  %110 = load i8*, i8** %10, align 8
  %111 = call i32 @free(i8* %110)
  %112 = load i64, i64* %13, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = sub i64 %112, %114
  %116 = load i32, i32* @crypto_sign_ed25519_BYTES, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp ne i64 %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %99
  br label %212

120:                                              ; preds = %99
  %121 = load i8**, i8*** %5, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 4
  %123 = load i8*, i8** %122, align 8
  %124 = call i32* @fopen(i8* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %124, i32** %15, align 8
  %125 = load i32*, i32** %15, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %212

128:                                              ; preds = %120
  %129 = load i8*, i8** %14, align 8
  %130 = load i64, i64* %13, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  %132 = load i8*, i8** %14, align 8
  %133 = load i32, i32* @crypto_sign_ed25519_BYTES, align 4
  %134 = call i32 @memcpy(i8* %131, i8* %132, i32 %133)
  %135 = load i8*, i8** %14, align 8
  %136 = load i64, i64* %13, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = sub i64 %136, %138
  %140 = getelementptr inbounds i8, i8* %135, i64 %139
  %141 = load i64, i64* %13, align 8
  %142 = load i32*, i32** %15, align 8
  %143 = call i64 @fwrite(i8* %140, i32 1, i64 %141, i32* %142)
  %144 = load i64, i64* %13, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %128
  br label %212

147:                                              ; preds = %128
  %148 = load i32*, i32** %15, align 8
  %149 = call i32 @fclose(i32* %148)
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %151

151:                                              ; preds = %147, %79, %76
  %152 = load i32, i32* %4, align 4
  %153 = icmp eq i32 %152, 4
  br i1 %153, label %154, label %211

154:                                              ; preds = %151
  %155 = load i8**, i8*** %5, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 1
  %157 = load i8*, i8** %156, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 99
  br i1 %161, label %162, label %211

162:                                              ; preds = %154
  %163 = load i8**, i8*** %5, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i64 2
  %165 = load i8*, i8** %164, align 8
  %166 = call i8* @hex_string_to_bin(i8* %165)
  store i8* %166, i8** %16, align 8
  %167 = load i8**, i8*** %5, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 3
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @load_file(i8* %169, i8** %17)
  store i32 %170, i32* %18, align 4
  %171 = load i32, i32* %18, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %162
  br label %212

174:                                              ; preds = %162
  %175 = load i32, i32* %18, align 4
  %176 = load i32, i32* @crypto_sign_ed25519_BYTES, align 4
  %177 = add nsw i32 %175, %176
  %178 = call i8* @malloc(i32 %177)
  store i8* %178, i8** %19, align 8
  %179 = load i8*, i8** %19, align 8
  %180 = load i8*, i8** %17, align 8
  %181 = load i32, i32* %18, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i32, i32* @crypto_sign_ed25519_BYTES, align 4
  %185 = sext i32 %184 to i64
  %186 = sub i64 0, %185
  %187 = getelementptr inbounds i8, i8* %183, i64 %186
  %188 = load i32, i32* @crypto_sign_ed25519_BYTES, align 4
  %189 = call i32 @memcpy(i8* %179, i8* %187, i32 %188)
  %190 = load i8*, i8** %19, align 8
  %191 = load i32, i32* @crypto_sign_ed25519_BYTES, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  %194 = load i8*, i8** %17, align 8
  %195 = load i32, i32* %18, align 4
  %196 = load i32, i32* @crypto_sign_ed25519_BYTES, align 4
  %197 = sub nsw i32 %195, %196
  %198 = call i32 @memcpy(i8* %193, i8* %194, i32 %197)
  %199 = load i32, i32* %18, align 4
  %200 = call i8* @malloc(i32 %199)
  store i8* %200, i8** %21, align 8
  %201 = load i8*, i8** %21, align 8
  %202 = load i8*, i8** %19, align 8
  %203 = load i32, i32* %18, align 4
  %204 = load i8*, i8** %16, align 8
  %205 = call i32 @crypto_sign_ed25519_open(i8* %201, i64* %22, i8* %202, i32 %203, i8* %204)
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %207, label %209

207:                                              ; preds = %174
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %212

209:                                              ; preds = %174
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %211

211:                                              ; preds = %209, %154, %151
  store i32 0, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %214

212:                                              ; preds = %207, %173, %146, %127, %119, %98
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %23, align 4
  br label %214

214:                                              ; preds = %212, %211
  %215 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %215)
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @crypto_sign_ed25519_keypair(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @hex_string_to_bin(i8*) #2

declare dso_local i32 @load_file(i8*, i8**) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @crypto_sign_ed25519(i8*, i64*, i8*, i32, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @crypto_sign_ed25519_open(i8*, i64*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
