; ModuleID = '/home/carl/AnghaBench/wcdb/backup/extr_mm_backup.c_write_thread_entry.c'
source_filename = "/home/carl/AnghaBench/wcdb/backup/extr_mm_backup.c_write_thread_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i32, i32, i32, %struct.TYPE_6__, i32, i32, i64, i64, i64, %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i32, i32*, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@OUTPUT_BUFFER_SIZE = common dso_local global i32 0, align 4
@Z_FINISH = common dso_local global i32 0, align 4
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_BUF_ERROR = common dso_local global i32 0, align 4
@Z_OK = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4
@MMBAK_FLAG_NO_CIPHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @write_thread_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @write_thread_entry(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %4, align 8
  br label %15

15:                                               ; preds = %222, %1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 4
  %18 = call i32 @pthread_mutex_lock(i32* %17)
  br label %19

19:                                               ; preds = %37, %15
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 11
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 9
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %29, %24, %19
  %36 = phi i1 [ false, %24 ], [ false, %19 ], [ %34, %29 ]
  br i1 %36, label %37, label %43

37:                                               ; preds = %35
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 5
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 4
  %42 = call i32 @pthread_cond_wait(i32* %39, i32* %41)
  br label %19

43:                                               ; preds = %35
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 12
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 12
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 6
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i64 %56, i64* %59, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %5, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 12
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 13
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 0
  %70 = icmp eq %struct.TYPE_4__* %65, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %43
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 13
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 1
  br label %81

76:                                               ; preds = %43
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 13
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 0
  br label %81

81:                                               ; preds = %76, %71
  %82 = phi %struct.TYPE_4__* [ %75, %71 ], [ %80, %76 ]
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 12
  store %struct.TYPE_4__* %82, %struct.TYPE_4__** %84, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 12
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 11
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 10
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 4
  %95 = call i32 @pthread_mutex_unlock(i32* %94)
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 5
  %98 = call i32 @pthread_cond_signal(i32* %97)
  %99 = load i32, i32* @OUTPUT_BUFFER_SIZE, align 4
  %100 = zext i32 %99 to i64
  %101 = call i8* @llvm.stacksave()
  store i8* %101, i8** %7, align 8
  %102 = alloca i32, i64 %100, align 16
  store i64 %100, i64* %8, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 9
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %81
  store i8* null, i8** %2, align 8
  store i32 1, i32* %9, align 4
  br label %219

108:                                              ; preds = %81
  br label %109

109:                                              ; preds = %204, %108
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  store i32* %102, i32** %112, align 8
  %113 = mul nuw i64 4, %100
  %114 = trunc i64 %113 to i32
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 8
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 6
  %120 = load i32, i32* %5, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %109
  %123 = load i32, i32* @Z_FINISH, align 4
  br label %126

124:                                              ; preds = %109
  %125 = load i32, i32* @Z_NO_FLUSH, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  %128 = call i32 @deflate(%struct.TYPE_6__* %119, i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @Z_BUF_ERROR, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  br label %206

133:                                              ; preds = %126
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @Z_OK, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %133
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @Z_STREAM_END, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %137
  store i32 8, i32* %9, align 4
  br label %219

142:                                              ; preds = %137, %133
  %143 = mul nuw i64 4, %100
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 6
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = sub i64 %143, %148
  store i64 %149, i64* %10, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @MMBAK_FLAG_NO_CIPHER, align 4
  %154 = and i32 %152, %153
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %142
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 8
  %159 = load i64, i64* %10, align 8
  %160 = call i32 @RC4(i32* %158, i64 %159, i32* %102, i32* %102)
  br label %161

161:                                              ; preds = %156, %142
  store i32* %102, i32** %11, align 8
  br label %162

162:                                              ; preds = %181, %161
  %163 = load i64, i64* %10, align 8
  %164 = icmp sgt i64 %163, 0
  br i1 %164, label %165, label %193

165:                                              ; preds = %162
  %166 = load i32*, i32** %11, align 8
  %167 = load i64, i64* %10, align 8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 8
  %171 = call i64 @fwrite(i32* %166, i32 1, i64 %167, i32 %170)
  store i64 %171, i64* %12, align 8
  %172 = load i64, i64* %12, align 8
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %165
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @ferror(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  store i32 8, i32* %9, align 4
  br label %219

181:                                              ; preds = %174, %165
  %182 = load i64, i64* %12, align 8
  %183 = load i64, i64* %10, align 8
  %184 = sub i64 %183, %182
  store i64 %184, i64* %10, align 8
  %185 = load i64, i64* %12, align 8
  %186 = load i32*, i32** %11, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 %185
  store i32* %187, i32** %11, align 8
  %188 = load i64, i64* %12, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = add i64 %191, %188
  store i64 %192, i64* %190, align 8
  br label %162

193:                                              ; preds = %162
  br label %194

194:                                              ; preds = %193
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 6
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load i32, i32* %6, align 4
  %202 = load i32, i32* @Z_STREAM_END, align 4
  %203 = icmp ne i32 %201, %202
  br label %204

204:                                              ; preds = %200, %194
  %205 = phi i1 [ false, %194 ], [ %203, %200 ]
  br i1 %205, label %109, label %206

206:                                              ; preds = %204, %132
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 6
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  store i32 8, i32* %9, align 4
  br label %219

213:                                              ; preds = %206
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* @Z_STREAM_END, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  store i32 2, i32* %9, align 4
  br label %219

218:                                              ; preds = %213
  store i32 0, i32* %9, align 4
  br label %219

219:                                              ; preds = %212, %180, %141, %218, %217, %107
  %220 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %220)
  %221 = load i32, i32* %9, align 4
  switch i32 %221, label %238 [
    i32 0, label %222
    i32 1, label %236
    i32 2, label %223
    i32 8, label %224
  ]

222:                                              ; preds = %219
  br label %15

223:                                              ; preds = %219
  store i8* null, i8** %2, align 8
  br label %236

224:                                              ; preds = %219
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 4
  %227 = call i32 @pthread_mutex_lock(i32* %226)
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 3
  store i32 1, i32* %229, align 8
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 5
  %232 = call i32 @pthread_cond_signal(i32* %231)
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 4
  %235 = call i32 @pthread_mutex_unlock(i32* %234)
  store i8* null, i8** %2, align 8
  br label %236

236:                                              ; preds = %224, %223, %219
  %237 = load i8*, i8** %2, align 8
  ret i8* %237

238:                                              ; preds = %219
  unreachable
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @deflate(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @RC4(i32*, i64, i32*, i32*) #1

declare dso_local i64 @fwrite(i32*, i32, i64, i32) #1

declare dso_local i64 @ferror(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
