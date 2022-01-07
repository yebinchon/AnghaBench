; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlexec.c_get_long_path_name.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlexec.c_get_long_path_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@MAX_PATH = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64)* @get_long_path_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_long_path_name(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_3__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load i32, i32* @MAX_PATH, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %3
  store i64 0, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %234

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 58
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 %38, i8* %39, align 16
  %40 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 58, i8* %40, align 1
  store i64 2, i64* %11, align 8
  store i64 2, i64* %12, align 8
  br label %41

41:                                               ; preds = %35, %29
  br label %42

42:                                               ; preds = %161, %76, %41
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = icmp ne i8 %46, 0
  br i1 %47, label %48, label %178

48:                                               ; preds = %42
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %11, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 92
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 47
  br i1 %61, label %62, label %81

62:                                               ; preds = %55, %48
  %63 = load i64, i64* %12, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i64, i64* %12, align 8
  %67 = sub i64 %66, 1
  %68 = getelementptr inbounds i8, i8* %20, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 92
  br i1 %71, label %72, label %76

72:                                               ; preds = %65, %62
  %73 = load i64, i64* %12, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %12, align 8
  %75 = getelementptr inbounds i8, i8* %20, i64 %73
  store i8 92, i8* %75, align 1
  br label %76

76:                                               ; preds = %72, %65
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds i8, i8* %20, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %11, align 8
  br label %42

81:                                               ; preds = %55
  %82 = load i8*, i8** %5, align 8
  %83 = load i64, i64* %11, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %10, align 8
  %85 = load i64, i64* %11, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %81
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 46
  br i1 %92, label %93, label %118

93:                                               ; preds = %87
  %94 = load i8*, i8** %10, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 47
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 92
  br i1 %104, label %105, label %118

105:                                              ; preds = %99, %93
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %10, align 8
  %108 = load i8, i8* %106, align 1
  %109 = load i64, i64* %12, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %12, align 8
  %111 = getelementptr inbounds i8, i8* %20, i64 %109
  store i8 %108, i8* %111, align 1
  %112 = load i8*, i8** %10, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %10, align 8
  %114 = load i8, i8* %112, align 1
  %115 = load i64, i64* %12, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %12, align 8
  %117 = getelementptr inbounds i8, i8* %20, i64 %115
  store i8 %114, i8* %117, align 1
  br label %118

118:                                              ; preds = %105, %99, %87, %81
  br label %119

119:                                              ; preds = %137, %118
  %120 = load i8*, i8** %10, align 8
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load i8*, i8** %10, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 47
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i8*, i8** %10, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 92
  br label %134

134:                                              ; preds = %129, %124, %119
  %135 = phi i1 [ false, %124 ], [ false, %119 ], [ %133, %129 ]
  br i1 %135, label %136, label %140

136:                                              ; preds = %134
  br label %137

137:                                              ; preds = %136
  %138 = load i8*, i8** %10, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %10, align 8
  br label %119

140:                                              ; preds = %134
  %141 = load i8*, i8** %10, align 8
  %142 = load i8*, i8** %5, align 8
  %143 = load i64, i64* %11, align 8
  %144 = getelementptr inbounds i8, i8* %142, i64 %143
  %145 = ptrtoint i8* %141 to i64
  %146 = ptrtoint i8* %144 to i64
  %147 = sub i64 %145, %146
  store i64 %147, i64* %13, align 8
  %148 = load i64, i64* %12, align 8
  %149 = getelementptr inbounds i8, i8* %20, i64 %148
  %150 = load i8*, i8** %5, align 8
  %151 = load i64, i64* %11, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  %153 = load i64, i64* %13, align 8
  %154 = add i64 %153, 1
  %155 = call i32 @lstrcpynA(i8* %149, i8* %152, i64 %154)
  %156 = call i64 @FindFirstFileA(i8* %20, %struct.TYPE_3__* %14)
  store i64 %156, i64* %15, align 8
  %157 = load i64, i64* %15, align 8
  %158 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %140
  store i64 0, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %234

161:                                              ; preds = %140
  %162 = load i64, i64* %15, align 8
  %163 = call i32 @FindClose(i64 %162)
  %164 = load i64, i64* %12, align 8
  %165 = getelementptr inbounds i8, i8* %20, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @strcpy(i8* %165, i8* %167)
  %169 = load i64, i64* %12, align 8
  %170 = getelementptr inbounds i8, i8* %20, i64 %169
  %171 = call i32 @strlen(i8* %170)
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* %12, align 8
  %174 = add i64 %173, %172
  store i64 %174, i64* %12, align 8
  %175 = load i64, i64* %13, align 8
  %176 = load i64, i64* %11, align 8
  %177 = add i64 %176, %175
  store i64 %177, i64* %11, align 8
  br label %42

178:                                              ; preds = %42
  %179 = load i8*, i8** %5, align 8
  %180 = call i32 @strlen(i8* %179)
  %181 = sub nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  store i64 %182, i64* %13, align 8
  %183 = load i8*, i8** %5, align 8
  %184 = load i64, i64* %13, align 8
  %185 = getelementptr inbounds i8, i8* %183, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 47
  br i1 %188, label %196, label %189

189:                                              ; preds = %178
  %190 = load i8*, i8** %5, align 8
  %191 = load i64, i64* %13, align 8
  %192 = getelementptr inbounds i8, i8* %190, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 92
  br i1 %195, label %196, label %218

196:                                              ; preds = %189, %178
  %197 = load i64, i64* %12, align 8
  %198 = sub i64 %197, 1
  %199 = getelementptr inbounds i8, i8* %20, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp ne i32 %201, 47
  br i1 %202, label %203, label %218

203:                                              ; preds = %196
  %204 = load i64, i64* %12, align 8
  %205 = sub i64 %204, 1
  %206 = getelementptr inbounds i8, i8* %20, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp ne i32 %208, 92
  br i1 %209, label %210, label %218

210:                                              ; preds = %203
  %211 = load i8*, i8** %5, align 8
  %212 = load i64, i64* %13, align 8
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  %214 = load i8, i8* %213, align 1
  %215 = load i64, i64* %12, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %12, align 8
  %217 = getelementptr inbounds i8, i8* %20, i64 %215
  store i8 %214, i8* %217, align 1
  br label %218

218:                                              ; preds = %210, %203, %196, %189
  %219 = load i64, i64* %12, align 8
  %220 = getelementptr inbounds i8, i8* %20, i64 %219
  store i8 0, i8* %220, align 1
  %221 = call i32 @strlen(i8* %20)
  %222 = add nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %13, align 8
  %224 = load i64, i64* %13, align 8
  %225 = load i64, i64* %7, align 8
  %226 = icmp ule i64 %224, %225
  br i1 %226, label %227, label %232

227:                                              ; preds = %218
  %228 = load i8*, i8** %6, align 8
  %229 = call i32 @strcpy(i8* %228, i8* %20)
  %230 = load i64, i64* %13, align 8
  %231 = add i64 %230, -1
  store i64 %231, i64* %13, align 8
  br label %232

232:                                              ; preds = %227, %218
  %233 = load i64, i64* %13, align 8
  store i64 %233, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %234

234:                                              ; preds = %232, %160, %28
  %235 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %235)
  %236 = load i64, i64* %4, align 8
  ret i64 %236
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lstrcpynA(i8*, i8*, i64) #2

declare dso_local i64 @FindFirstFileA(i8*, %struct.TYPE_3__*) #2

declare dso_local i32 @FindClose(i64) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
