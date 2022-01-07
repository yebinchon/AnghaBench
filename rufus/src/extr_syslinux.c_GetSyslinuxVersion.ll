; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_syslinux.c_GetSyslinuxVersion.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_syslinux.c_GetSyslinuxVersion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.GetSyslinuxVersion.LINUX = private unnamed_addr constant [6 x i8] c"LINUX ", align 1
@GetSyslinuxVersion.nullstr = internal global i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.GetSyslinuxVersion.unauthorized = private unnamed_addr constant [8 x i8] c"<>:|*?\\/", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetSyslinuxVersion(i8* %0, i64 %1, i8** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [6 x i8], align 1
  %14 = alloca [8 x i8], align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  %15 = bitcast [6 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.GetSyslinuxVersion.LINUX, i32 0, i32 0), i64 6, i1 false)
  %16 = bitcast [8 x i8]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.GetSyslinuxVersion.unauthorized, i32 0, i32 0), i64 8, i1 false)
  %17 = load i8*, i8** @GetSyslinuxVersion.nullstr, align 8
  %18 = load i8**, i8*** %7, align 8
  store i8* %17, i8** %18, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %19, 256
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %241

22:                                               ; preds = %3
  store i64 64, i64* %8, align 8
  br label %23

23:                                               ; preds = %237, %22
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = sub i64 %25, 64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %28, label %240

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %33 = call i64 @memcmp(i8* %31, i8* %32, i32 6)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %236

35:                                               ; preds = %28
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %8, align 8
  %38 = sub i64 %37, 3
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 73
  br i1 %42, label %43, label %59

43:                                               ; preds = %35
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %8, align 8
  %46 = sub i64 %45, 2
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 83
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load i8*, i8** %5, align 8
  %53 = load i64, i64* %8, align 8
  %54 = sub i64 %53, 1
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 79
  br i1 %58, label %84, label %59

59:                                               ; preds = %51, %43, %35
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* %8, align 8
  %62 = sub i64 %61, 3
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 83
  br i1 %66, label %67, label %83

67:                                               ; preds = %59
  %68 = load i8*, i8** %5, align 8
  %69 = load i64, i64* %8, align 8
  %70 = sub i64 %69, 2
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 89
  br i1 %74, label %75, label %83

75:                                               ; preds = %67
  %76 = load i8*, i8** %5, align 8
  %77 = load i64, i64* %8, align 8
  %78 = sub i64 %77, 1
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 83
  br i1 %82, label %84, label %83

83:                                               ; preds = %75, %67, %59
  br label %237

84:                                               ; preds = %75, %51
  %85 = load i64, i64* %8, align 8
  %86 = add i64 %85, 6
  store i64 %86, i64* %8, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = call i64 @strtoul(i8* %89, i8** %11, i32 10)
  %91 = trunc i64 %90 to i32
  %92 = shl i32 %91, 8
  %93 = load i8*, i8** %11, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = call i64 @strtoul(i8* %94, i8** %11, i32 10)
  %96 = trunc i64 %95 to i32
  %97 = add nsw i32 %92, %96
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %12, align 8
  %99 = load i64, i64* %12, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %84
  br label %237

102:                                              ; preds = %84
  %103 = load i8*, i8** %11, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = call i64 @safe_strlen(i8* %104)
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  store i8 0, i8* %106, align 1
  %107 = load i8*, i8** %11, align 8
  store i8 47, i8* %107, align 1
  store i64 0, i64* %9, align 8
  br label %108

108:                                              ; preds = %135, %102
  %109 = load i8*, i8** %5, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i64, i64* %9, align 8
  %112 = add i64 %110, %111
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = load i8*, i8** %11, align 8
  %117 = load i64, i64* %9, align 8
  %118 = add i64 1, %117
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %115, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %108
  %124 = load i8*, i8** %5, align 8
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* %9, align 8
  %127 = add i64 %125, %126
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 32
  br label %132

132:                                              ; preds = %123, %108
  %133 = phi i1 [ false, %108 ], [ %131, %123 ]
  br i1 %133, label %134, label %138

134:                                              ; preds = %132
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %9, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %9, align 8
  br label %108

138:                                              ; preds = %132
  %139 = load i8*, i8** %11, align 8
  %140 = load i64, i64* %9, align 8
  %141 = add i64 %140, 1
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 45
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = load i64, i64* %9, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %9, align 8
  br label %149

149:                                              ; preds = %146, %138
  %150 = load i64, i64* %9, align 8
  %151 = icmp uge i64 %150, 4
  br i1 %151, label %152, label %159

152:                                              ; preds = %149
  %153 = load i8*, i8** %11, align 8
  %154 = load i64, i64* %9, align 8
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  store i8 47, i8* %155, align 1
  %156 = load i8*, i8** %11, align 8
  %157 = load i64, i64* %9, align 8
  %158 = getelementptr inbounds i8, i8* %156, i64 %157
  store i8* %158, i8** %11, align 8
  br label %159

159:                                              ; preds = %152, %149
  %160 = load i8*, i8** %11, align 8
  %161 = call i64 @safe_strlen(i8* %160)
  %162 = sub i64 %161, 1
  store i64 %162, i64* %9, align 8
  br label %163

163:                                              ; preds = %186, %159
  %164 = load i64, i64* %9, align 8
  %165 = icmp ugt i64 %164, 0
  br i1 %165, label %166, label %189

166:                                              ; preds = %163
  %167 = load i8*, i8** %11, align 8
  %168 = load i64, i64* %9, align 8
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 32
  br i1 %172, label %180, label %173

173:                                              ; preds = %166
  %174 = load i8*, i8** %11, align 8
  %175 = load i64, i64* %9, align 8
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 42
  br i1 %179, label %180, label %184

180:                                              ; preds = %173, %166
  %181 = load i8*, i8** %11, align 8
  %182 = load i64, i64* %9, align 8
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  store i8 0, i8* %183, align 1
  br label %185

184:                                              ; preds = %173
  br label %189

185:                                              ; preds = %180
  br label %186

186:                                              ; preds = %185
  %187 = load i64, i64* %9, align 8
  %188 = add i64 %187, -1
  store i64 %188, i64* %9, align 8
  br label %163

189:                                              ; preds = %184, %163
  store i64 1, i64* %9, align 8
  br label %190

190:                                              ; preds = %219, %189
  %191 = load i64, i64* %9, align 8
  %192 = load i8*, i8** %11, align 8
  %193 = call i64 @safe_strlen(i8* %192)
  %194 = icmp ult i64 %191, %193
  br i1 %194, label %195, label %222

195:                                              ; preds = %190
  store i64 0, i64* %10, align 8
  br label %196

196:                                              ; preds = %215, %195
  %197 = load i64, i64* %10, align 8
  %198 = icmp ult i64 %197, 8
  br i1 %198, label %199, label %218

199:                                              ; preds = %196
  %200 = load i8*, i8** %11, align 8
  %201 = load i64, i64* %9, align 8
  %202 = getelementptr inbounds i8, i8* %200, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = load i64, i64* %10, align 8
  %206 = getelementptr inbounds [8 x i8], [8 x i8]* %14, i64 0, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %204, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %199
  %211 = load i8*, i8** %11, align 8
  %212 = load i64, i64* %9, align 8
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  store i8 95, i8* %213, align 1
  br label %214

214:                                              ; preds = %210, %199
  br label %215

215:                                              ; preds = %214
  %216 = load i64, i64* %10, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %10, align 8
  br label %196

218:                                              ; preds = %196
  br label %219

219:                                              ; preds = %218
  %220 = load i64, i64* %9, align 8
  %221 = add i64 %220, 1
  store i64 %221, i64* %9, align 8
  br label %190

222:                                              ; preds = %190
  %223 = load i8*, i8** %11, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 1
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %222
  %229 = load i8*, i8** @GetSyslinuxVersion.nullstr, align 8
  br label %232

230:                                              ; preds = %222
  %231 = load i8*, i8** %11, align 8
  br label %232

232:                                              ; preds = %230, %228
  %233 = phi i8* [ %229, %228 ], [ %231, %230 ]
  %234 = load i8**, i8*** %7, align 8
  store i8* %233, i8** %234, align 8
  %235 = load i64, i64* %12, align 8
  store i64 %235, i64* %4, align 8
  br label %241

236:                                              ; preds = %28
  br label %237

237:                                              ; preds = %236, %101, %83
  %238 = load i64, i64* %8, align 8
  %239 = add i64 %238, 1
  store i64 %239, i64* %8, align 8
  br label %23

240:                                              ; preds = %23
  store i64 0, i64* %4, align 8
  br label %241

241:                                              ; preds = %240, %232, %21
  %242 = load i64, i64* %4, align 8
  ret i64 %242
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i64 @strtoul(i8*, i8**, i32) #2

declare dso_local i64 @safe_strlen(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
