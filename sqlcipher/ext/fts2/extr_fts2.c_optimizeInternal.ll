; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_optimizeInternal.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_optimizeInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@LEAF_MAX = common dso_local global i32 0, align 4
@DL_DEFAULT = common dso_local global i32 0, align 4
@MERGE_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*)* @optimizeInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @optimizeInternal(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__, align 8
  %12 = alloca %struct.TYPE_7__, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %18 = load i32, i32* @SQLITE_OK, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %24, %4
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %9, align 4
  %23 = icmp sgt i32 %21, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %29, %30
  %32 = call i32 @optLeavesReaderReorder(i32* %28, i32 %31)
  br label %20

33:                                               ; preds = %20
  %34 = load i32, i32* @LEAF_MAX, align 4
  %35 = call i32 @dataBufferInit(%struct.TYPE_7__* %11, i32 %34)
  %36 = load i32, i32* @LEAF_MAX, align 4
  %37 = call i32 @dataBufferInit(%struct.TYPE_7__* %12, i32 %36)
  br label %38

38:                                               ; preds = %229, %33
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = call i32 @optLeavesReaderAtEnd(i32* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %230

44:                                               ; preds = %38
  store i32 1, i32* %9, align 4
  br label %45

45:                                               ; preds = %70, %44
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i32 @optLeavesReaderAtEnd(i32* %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %49, %45
  %58 = phi i1 [ false, %45 ], [ %56, %49 ]
  br i1 %58, label %59, label %73

59:                                               ; preds = %57
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = call i64 @optLeavesReaderTermCmp(i32* %61, i32* %65)
  %67 = icmp ne i64 0, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %73

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %45

73:                                               ; preds = %68, %57
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = call i32 @dataBufferReset(%struct.TYPE_7__* %12)
  %78 = load i32, i32* @DL_DEFAULT, align 4
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = call i32 @optLeavesReaderData(i32* %80)
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = call i64 @optLeavesReaderDataBytes(i32* %83)
  %85 = load i32, i32* @DL_DEFAULT, align 4
  %86 = call i32 @docListTrim(i32 %78, i32 %81, i64 %84, i32 -1, i32 %85, %struct.TYPE_7__* %12)
  br label %181

87:                                               ; preds = %73
  %88 = load i32, i32* @MERGE_COUNT, align 4
  %89 = zext i32 %88 to i64
  %90 = call i8* @llvm.stacksave()
  store i8* %90, i8** %14, align 8
  %91 = alloca i32, i64 %89, align 16
  store i64 %89, i64* %15, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* @DL_DEFAULT, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = call i32 @optLeavesReaderData(i32* %95)
  %97 = load i32*, i32** %6, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = call i64 @optLeavesReaderDataBytes(i32* %98)
  %100 = call i32 @dlrInit(i32* %92, i32 %93, i32 %96, i64 %99)
  store i32 1, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp slt i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  br label %106

106:                                              ; preds = %161, %87
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %169

110:                                              ; preds = %106
  store i32 1, i32* %17, align 4
  br label %111

111:                                              ; preds = %137, %110
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* @MERGE_COUNT, align 4
  %118 = icmp slt i32 %116, %117
  br label %119

119:                                              ; preds = %115, %111
  %120 = phi i1 [ false, %111 ], [ %118, %115 ]
  br i1 %120, label %121, label %142

121:                                              ; preds = %119
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %91, i64 %123
  %125 = load i32, i32* @DL_DEFAULT, align 4
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = call i32 @optLeavesReaderData(i32* %129)
  %131 = load i32*, i32** %6, align 8
  %132 = load i32, i32* %16, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = call i64 @optLeavesReaderDataBytes(i32* %134)
  %136 = call i32 @dlrInit(i32* %124, i32 %125, i32 %130, i64 %135)
  br label %137

137:                                              ; preds = %121
  %138 = load i32, i32* %16, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %17, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %17, align 4
  br label %111

142:                                              ; preds = %119
  %143 = call i32 @dataBufferReset(%struct.TYPE_7__* %12)
  %144 = load i32, i32* %17, align 4
  %145 = call i32 @docListMerge(%struct.TYPE_7__* %12, i32* %91, i32 %144)
  %146 = bitcast %struct.TYPE_7__* %13 to i8*
  %147 = bitcast %struct.TYPE_7__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %146, i8* align 8 %147, i64 16, i1 false)
  %148 = bitcast %struct.TYPE_7__* %12 to i8*
  %149 = bitcast %struct.TYPE_7__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %148, i8* align 8 %149, i64 16, i1 false)
  %150 = bitcast %struct.TYPE_7__* %11 to i8*
  %151 = bitcast %struct.TYPE_7__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 8 %151, i64 16, i1 false)
  br label %152

152:                                              ; preds = %156, %142
  %153 = load i32, i32* %17, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %17, align 4
  %155 = icmp sgt i32 %153, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %152
  %157 = load i32, i32* %17, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %91, i64 %158
  %160 = call i32 @dlrDestroy(i32* %159)
  br label %152

161:                                              ; preds = %152
  %162 = getelementptr inbounds i32, i32* %91, i64 0
  %163 = load i32, i32* @DL_DEFAULT, align 4
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @dlrInit(i32* %162, i32 %163, i32 %165, i64 %167)
  br label %106

169:                                              ; preds = %106
  %170 = getelementptr inbounds i32, i32* %91, i64 0
  %171 = call i32 @dlrDestroy(i32* %170)
  %172 = call i32 @dataBufferReset(%struct.TYPE_7__* %12)
  %173 = load i32, i32* @DL_DEFAULT, align 4
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* @DL_DEFAULT, align 4
  %179 = call i32 @docListTrim(i32 %173, i32 %175, i64 %177, i32 -1, i32 %178, %struct.TYPE_7__* %12)
  %180 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %180)
  br label %181

181:                                              ; preds = %169, %76
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp sgt i64 %183, 0
  br i1 %184, label %185, label %204

185:                                              ; preds = %181
  %186 = load i32*, i32** %5, align 8
  %187 = load i32*, i32** %8, align 8
  %188 = load i32*, i32** %6, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = call i32 @optLeavesReaderTerm(i32* %189)
  %191 = load i32*, i32** %6, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = call i32 @optLeavesReaderTermBytes(i32* %192)
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call i32 @leafWriterStep(i32* %186, i32* %187, i32 %190, i32 %193, i32 %195, i64 %197)
  store i32 %198, i32* %10, align 4
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* @SQLITE_OK, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %185
  br label %231

203:                                              ; preds = %185
  br label %204

204:                                              ; preds = %203, %181
  br label %205

205:                                              ; preds = %220, %204
  %206 = load i32, i32* %9, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %9, align 4
  %208 = icmp sgt i32 %206, 0
  br i1 %208, label %209, label %229

209:                                              ; preds = %205
  %210 = load i32*, i32** %5, align 8
  %211 = load i32*, i32** %6, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = call i32 @optLeavesReaderStep(i32* %210, i32* %214)
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* @SQLITE_OK, align 4
  %218 = icmp ne i32 %216, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %209
  br label %231

220:                                              ; preds = %209
  %221 = load i32*, i32** %6, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* %9, align 4
  %227 = sub nsw i32 %225, %226
  %228 = call i32 @optLeavesReaderReorder(i32* %224, i32 %227)
  br label %205

229:                                              ; preds = %205
  br label %38

230:                                              ; preds = %38
  br label %231

231:                                              ; preds = %230, %219, %202
  %232 = call i32 @dataBufferDestroy(%struct.TYPE_7__* %11)
  %233 = call i32 @dataBufferDestroy(%struct.TYPE_7__* %12)
  %234 = load i32, i32* %10, align 4
  ret i32 %234
}

declare dso_local i32 @optLeavesReaderReorder(i32*, i32) #1

declare dso_local i32 @dataBufferInit(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @optLeavesReaderAtEnd(i32*) #1

declare dso_local i64 @optLeavesReaderTermCmp(i32*, i32*) #1

declare dso_local i32 @dataBufferReset(%struct.TYPE_7__*) #1

declare dso_local i32 @docListTrim(i32, i32, i64, i32, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @optLeavesReaderData(i32*) #1

declare dso_local i64 @optLeavesReaderDataBytes(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dlrInit(i32*, i32, i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @docListMerge(%struct.TYPE_7__*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @dlrDestroy(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @leafWriterStep(i32*, i32*, i32, i32, i32, i64) #1

declare dso_local i32 @optLeavesReaderTerm(i32*) #1

declare dso_local i32 @optLeavesReaderTermBytes(i32*) #1

declare dso_local i32 @optLeavesReaderStep(i32*, i32*) #1

declare dso_local i32 @dataBufferDestroy(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
