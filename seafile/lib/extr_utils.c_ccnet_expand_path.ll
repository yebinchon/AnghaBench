; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_utils.c_ccnet_expand_path.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_utils.c_ccnet_expand_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@SEAF_PATH_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ccnet_expand_path(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %3, align 8
  %12 = load i32, i32* @SEAF_PATH_MAX, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %1
  store i8* null, i8** %2, align 8
  store i32 1, i32* %10, align 4
  br label %232

25:                                               ; preds = %19
  %26 = load i8*, i8** %3, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = load i32, i32* @SEAF_PATH_MAX, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i8* null, i8** %2, align 8
  store i32 1, i32* %10, align 4
  br label %232

31:                                               ; preds = %25
  %32 = load i8*, i8** %3, align 8
  store i8* %32, i8** %4, align 8
  store i8* %16, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %3, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 126
  br i1 %37, label %38, label %101

38:                                               ; preds = %31
  store %struct.passwd* null, %struct.passwd** %11, align 8
  br label %39

39:                                               ; preds = %52, %38
  %40 = load i8*, i8** %4, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 47
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i8*, i8** %4, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ false, %39 ], [ %48, %44 ]
  br i1 %50, label %51, label %55

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %4, align 8
  br label %39

55:                                               ; preds = %49
  %56 = load i8*, i8** %4, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = call i32 (...) @geteuid()
  %66 = call %struct.passwd* @getpwuid(i32 %65)
  store %struct.passwd* %66, %struct.passwd** %11, align 8
  br label %76

67:                                               ; preds = %55
  %68 = load i8*, i8** %3, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @memcpy(i8* %16, i8* %68, i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %16, i64 %72
  store i8 0, i8* %73, align 1
  %74 = getelementptr inbounds i8, i8* %16, i64 1
  %75 = call %struct.passwd* @getpwnam(i8* %74)
  store %struct.passwd* %75, %struct.passwd** %11, align 8
  br label %76

76:                                               ; preds = %67, %64
  %77 = load %struct.passwd*, %struct.passwd** %11, align 8
  %78 = icmp eq %struct.passwd* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i8* null, i8** %2, align 8
  store i32 1, i32* %10, align 4
  br label %232

80:                                               ; preds = %76
  %81 = load %struct.passwd*, %struct.passwd** %11, align 8
  %82 = getelementptr inbounds %struct.passwd, %struct.passwd* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @strlen(i8* %83)
  store i32 %84, i32* %9, align 4
  %85 = load %struct.passwd*, %struct.passwd** %11, align 8
  %86 = getelementptr inbounds %struct.passwd, %struct.passwd* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @memcpy(i8* %16, i8* %87, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %16, i64 %91
  store i8* %92, i8** %8, align 8
  %93 = load i8*, i8** %8, align 8
  store i8 0, i8* %93, align 1
  %94 = load i8*, i8** %4, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %80
  %99 = call i8* @strdup(i8* %16)
  store i8* %99, i8** %2, align 8
  store i32 1, i32* %10, align 4
  br label %232

100:                                              ; preds = %80
  br label %119

101:                                              ; preds = %31
  %102 = load i8*, i8** %3, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 47
  br i1 %105, label %106, label %118

106:                                              ; preds = %101
  %107 = load i32, i32* @SEAF_PATH_MAX, align 4
  %108 = call i32 @getcwd(i8* %16, i32 %107)
  br label %109

109:                                              ; preds = %114, %106
  %110 = load i8*, i8** %8, align 8
  %111 = load i8, i8* %110, align 1
  %112 = icmp ne i8 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  br label %114

114:                                              ; preds = %113
  %115 = load i8*, i8** %8, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %8, align 8
  br label %109

117:                                              ; preds = %109
  br label %118

118:                                              ; preds = %117, %101
  br label %119

119:                                              ; preds = %118, %100
  br label %120

120:                                              ; preds = %221, %119
  %121 = load i8*, i8** %4, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %222

125:                                              ; preds = %120
  %126 = load i8*, i8** %4, align 8
  store i8* %126, i8** %5, align 8
  br label %127

127:                                              ; preds = %133, %125
  %128 = load i8*, i8** %5, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 47
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  br label %133

133:                                              ; preds = %132
  %134 = load i8*, i8** %5, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %5, align 8
  br label %127

136:                                              ; preds = %127
  %137 = load i8*, i8** %5, align 8
  store i8* %137, i8** %4, align 8
  br label %138

138:                                              ; preds = %151, %136
  %139 = load i8*, i8** %4, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 47
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load i8*, i8** %4, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br label %148

148:                                              ; preds = %143, %138
  %149 = phi i1 [ false, %138 ], [ %147, %143 ]
  br i1 %149, label %150, label %154

150:                                              ; preds = %148
  br label %151

151:                                              ; preds = %150
  %152 = load i8*, i8** %4, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %4, align 8
  br label %138

154:                                              ; preds = %148
  %155 = load i8*, i8** %4, align 8
  %156 = load i8*, i8** %5, align 8
  %157 = ptrtoint i8* %155 to i64
  %158 = ptrtoint i8* %156 to i64
  %159 = sub i64 %157, %158
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %154
  %164 = load i8*, i8** %8, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %8, align 8
  store i8 47, i8* %164, align 1
  %166 = load i8*, i8** %8, align 8
  store i8 0, i8* %166, align 1
  br label %222

167:                                              ; preds = %154
  %168 = load i32, i32* %9, align 4
  %169 = icmp eq i32 %168, 2
  br i1 %169, label %170, label %199

170:                                              ; preds = %167
  %171 = load i8*, i8** %5, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 46
  br i1 %175, label %176, label %199

176:                                              ; preds = %170
  %177 = load i8*, i8** %5, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 46
  br i1 %181, label %182, label %199

182:                                              ; preds = %176
  br label %183

183:                                              ; preds = %194, %182
  %184 = load i8*, i8** %8, align 8
  %185 = icmp ugt i8* %184, %16
  br i1 %185, label %186, label %191

186:                                              ; preds = %183
  %187 = load i8*, i8** %8, align 8
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp ne i32 %189, 47
  br label %191

191:                                              ; preds = %186, %183
  %192 = phi i1 [ false, %183 ], [ %190, %186 ]
  br i1 %192, label %193, label %197

193:                                              ; preds = %191
  br label %194

194:                                              ; preds = %193
  %195 = load i8*, i8** %8, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 -1
  store i8* %196, i8** %8, align 8
  br label %183

197:                                              ; preds = %191
  %198 = load i8*, i8** %8, align 8
  store i8 0, i8* %198, align 1
  br label %221

199:                                              ; preds = %176, %170, %167
  %200 = load i8*, i8** %5, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 0
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp ne i32 %203, 46
  br i1 %204, label %208, label %205

205:                                              ; preds = %199
  %206 = load i32, i32* %9, align 4
  %207 = icmp ne i32 %206, 1
  br i1 %207, label %208, label %220

208:                                              ; preds = %205, %199
  %209 = load i8*, i8** %8, align 8
  %210 = getelementptr inbounds i8, i8* %209, i32 1
  store i8* %210, i8** %8, align 8
  store i8 47, i8* %209, align 1
  %211 = load i8*, i8** %8, align 8
  %212 = load i8*, i8** %5, align 8
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @memcpy(i8* %211, i8* %212, i32 %213)
  %215 = load i32, i32* %9, align 4
  %216 = load i8*, i8** %8, align 8
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i8, i8* %216, i64 %217
  store i8* %218, i8** %8, align 8
  %219 = load i8*, i8** %8, align 8
  store i8 0, i8* %219, align 1
  br label %220

220:                                              ; preds = %208, %205
  br label %221

221:                                              ; preds = %220, %197
  br label %120

222:                                              ; preds = %163, %120
  %223 = getelementptr inbounds i8, i8* %16, i64 0
  %224 = load i8, i8* %223, align 16
  %225 = sext i8 %224 to i32
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 47, i8* %228, align 16
  %229 = getelementptr inbounds i8, i8* %16, i64 1
  store i8 0, i8* %229, align 1
  br label %230

230:                                              ; preds = %227, %222
  %231 = call i8* @strdup(i8* %16)
  store i8* %231, i8** %2, align 8
  store i32 1, i32* %10, align 4
  br label %232

232:                                              ; preds = %230, %98, %79, %30, %24
  %233 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %233)
  %234 = load i8*, i8** %2, align 8
  ret i8* %234
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local %struct.passwd* @getpwuid(i32) #2

declare dso_local i32 @geteuid(...) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local %struct.passwd* @getpwnam(i8*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i32 @getcwd(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
