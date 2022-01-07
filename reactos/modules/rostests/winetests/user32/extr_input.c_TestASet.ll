; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_input.c_TestASet.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_input.c_TestASet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TestASet.count = internal global i32 0, align 4
@MAXKEYEVENTS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64*, i64*)* @TestASet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TestASet(i32 %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %19 = load i32, i32* @MAXKEYEVENTS, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %16, align 8
  %22 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %17, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 3
  br label %28

28:                                               ; preds = %25, %4
  %29 = phi i1 [ true, %4 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %40, %28
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @MAXKEYEVENTS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %22, i64 %38
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %32

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %99

46:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %95, %46
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %98

51:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %91, %51
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %94

56:                                               ; preds = %52
  %57 = load i64*, i64** %8, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 %61, i64* %62, align 16
  %63 = load i64*, i64** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sub nsw i32 1, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %63, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds i64, i64* %22, i64 1
  store i64 %68, i64* %69, align 8
  %70 = load i64*, i64** %9, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i64, i64* %22, i64 2
  store i64 %74, i64* %75, align 16
  %76 = load i64*, i64** %9, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sub nsw i32 1, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i64, i64* %22, i64 3
  store i64 %81, i64* %82, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @TestASet.count, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* @TestASet.count, align 4
  %86 = call i32 @do_test(i32 %83, i32 %84, i64* %22)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %56
  %89 = load i32, i32* @FALSE, align 4
  store i32 %89, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %231

90:                                               ; preds = %56
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %52

94:                                               ; preds = %52
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %47

98:                                               ; preds = %47
  br label %99

99:                                               ; preds = %98, %43
  %100 = load i32, i32* %7, align 4
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %102, label %229

102:                                              ; preds = %99
  store i32 0, i32* %10, align 4
  br label %103

103:                                              ; preds = %225, %102
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %228

107:                                              ; preds = %103
  store i32 0, i32* %11, align 4
  br label %108

108:                                              ; preds = %221, %107
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %224

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  br label %221

117:                                              ; preds = %112
  store i32 0, i32* %12, align 4
  br label %118

118:                                              ; preds = %217, %117
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %220

122:                                              ; preds = %118
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126, %122
  br label %217

131:                                              ; preds = %126
  store i32 0, i32* %13, align 4
  br label %132

132:                                              ; preds = %213, %131
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %216

136:                                              ; preds = %132
  store i32 0, i32* %14, align 4
  br label %137

137:                                              ; preds = %209, %136
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %212

141:                                              ; preds = %137
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %209

146:                                              ; preds = %141
  store i32 0, i32* %15, align 4
  br label %147

147:                                              ; preds = %205, %146
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %7, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %208

151:                                              ; preds = %147
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* %13, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %159, label %155

155:                                              ; preds = %151
  %156 = load i32, i32* %15, align 4
  %157 = load i32, i32* %14, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155, %151
  br label %205

160:                                              ; preds = %155
  %161 = load i64*, i64** %8, align 8
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds i64, i64* %22, i64 0
  store i64 %165, i64* %166, align 16
  %167 = load i64*, i64** %8, align 8
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds i64, i64* %22, i64 1
  store i64 %171, i64* %172, align 8
  %173 = load i64*, i64** %8, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds i64, i64* %22, i64 2
  store i64 %177, i64* %178, align 16
  %179 = load i64*, i64** %9, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds i64, i64* %22, i64 3
  store i64 %183, i64* %184, align 8
  %185 = load i64*, i64** %9, align 8
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds i64, i64* %22, i64 4
  store i64 %189, i64* %190, align 16
  %191 = load i64*, i64** %9, align 8
  %192 = load i32, i32* %15, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i64, i64* %191, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds i64, i64* %22, i64 5
  store i64 %195, i64* %196, align 8
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* @TestASet.count, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* @TestASet.count, align 4
  %200 = call i32 @do_test(i32 %197, i32 %198, i64* %22)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %160
  %203 = load i32, i32* @FALSE, align 4
  store i32 %203, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %231

204:                                              ; preds = %160
  br label %205

205:                                              ; preds = %204, %159
  %206 = load i32, i32* %15, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %15, align 4
  br label %147

208:                                              ; preds = %147
  br label %209

209:                                              ; preds = %208, %145
  %210 = load i32, i32* %14, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %14, align 4
  br label %137

212:                                              ; preds = %137
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %13, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %13, align 4
  br label %132

216:                                              ; preds = %132
  br label %217

217:                                              ; preds = %216, %130
  %218 = load i32, i32* %12, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %12, align 4
  br label %118

220:                                              ; preds = %118
  br label %221

221:                                              ; preds = %220, %116
  %222 = load i32, i32* %11, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %11, align 4
  br label %108

224:                                              ; preds = %108
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %10, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %10, align 4
  br label %103

228:                                              ; preds = %103
  br label %229

229:                                              ; preds = %228, %99
  %230 = load i32, i32* @TRUE, align 4
  store i32 %230, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %231

231:                                              ; preds = %229, %202, %88
  %232 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %232)
  %233 = load i32, i32* %5, align 4
  ret i32 %233
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @do_test(i32, i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
