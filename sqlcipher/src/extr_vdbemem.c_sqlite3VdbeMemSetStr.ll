; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vdbemem.c_sqlite3VdbeMemSetStr.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vdbemem.c_sqlite3VdbeMemSetStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, void (i8*)*, i32, i32, i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32*, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_LIMIT_LENGTH = common dso_local global i64 0, align 8
@SQLITE_MAX_LENGTH = common dso_local global i32 0, align 4
@MEM_Blob = common dso_local global i32 0, align 4
@MEM_Str = common dso_local global i32 0, align 4
@SQLITE_UTF8 = common dso_local global i64 0, align 8
@MEM_Term = common dso_local global i32 0, align 4
@SQLITE_TOOBIG = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@MEM_Static = common dso_local global i32 0, align 4
@MEM_Dyn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3VdbeMemSetStr(%struct.TYPE_10__* %0, i8* %1, i32 %2, i64 %3, void (i8*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca void (i8*)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store void (i8*)* %4, void (i8*)** %11, align 8
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 6
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = icmp eq %struct.TYPE_11__* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %5
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @sqlite3_mutex_held(i32 %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %21, %5
  %30 = phi i1 [ true, %5 ], [ %28, %21 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %34 = call i32 @sqlite3VdbeMemIsRowSet(%struct.TYPE_10__* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %29
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %43 = call i32 @sqlite3VdbeMemSetNull(%struct.TYPE_10__* %42)
  %44 = load i32, i32* @SQLITE_OK, align 4
  store i32 %44, i32* %6, align 4
  br label %246

45:                                               ; preds = %29
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 6
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = icmp ne %struct.TYPE_11__* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 6
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @SQLITE_LIMIT_LENGTH, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %13, align 4
  br label %61

59:                                               ; preds = %45
  %60 = load i32, i32* @SQLITE_MAX_LENGTH, align 4
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %59, %50
  %62 = load i64, i64* %10, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @MEM_Blob, align 4
  br label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @MEM_Str, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %117

72:                                               ; preds = %68
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @SQLITE_UTF8, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load i8*, i8** %8, align 8
  %82 = call i64 @strlen(i8* %81)
  %83 = trunc i64 %82 to i32
  %84 = and i32 2147483647, %83
  store i32 %84, i32* %12, align 4
  br label %113

85:                                               ; preds = %72
  store i32 0, i32* %12, align 4
  br label %86

86:                                               ; preds = %109, %85
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %86
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = load i8*, i8** %8, align 8
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %97, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = or i32 %96, %103
  %105 = icmp ne i32 %104, 0
  br label %106

106:                                              ; preds = %90, %86
  %107 = phi i1 [ false, %86 ], [ %105, %90 ]
  br i1 %107, label %108, label %112

108:                                              ; preds = %106
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 2
  store i32 %111, i32* %12, align 4
  br label %86

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %80
  %114 = load i32, i32* @MEM_Term, align 4
  %115 = load i32, i32* %14, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %14, align 4
  br label %117

117:                                              ; preds = %113, %68
  %118 = load void (i8*)*, void (i8*)** %11, align 8
  %119 = icmp eq void (i8*)* %118, @SQLITE_TRANSIENT
  br i1 %119, label %120, label %172

120:                                              ; preds = %117
  %121 = load i32, i32* %12, align 4
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @MEM_Term, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %120
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* @SQLITE_UTF8, align 8
  %129 = icmp eq i64 %127, %128
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 1, i32 2
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %15, align 4
  br label %134

134:                                              ; preds = %126, %120
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %13, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 6
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = load i32, i32* @SQLITE_TOOBIG, align 4
  %143 = call i32 @sqlite3ErrorToParser(%struct.TYPE_11__* %141, i32 %142)
  store i32 %143, i32* %6, align 4
  br label %246

144:                                              ; preds = %134
  %145 = load i32, i32* %15, align 4
  %146 = icmp eq i32 %145, 0
  %147 = zext i1 %146 to i32
  %148 = call i32 @testcase(i32 %147)
  %149 = load i32, i32* %15, align 4
  %150 = icmp eq i32 %149, 31
  %151 = zext i1 %150 to i32
  %152 = call i32 @testcase(i32 %151)
  %153 = load i32, i32* %15, align 4
  %154 = icmp eq i32 %153, 32
  %155 = zext i1 %154 to i32
  %156 = call i32 @testcase(i32 %155)
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %158 = load i32, i32* %15, align 4
  %159 = call i64 @MAX(i32 %158, i32 32)
  %160 = trunc i64 %159 to i32
  %161 = call i64 @sqlite3VdbeMemClearAndResize(%struct.TYPE_10__* %157, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %144
  %164 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %164, i32* %6, align 4
  br label %246

165:                                              ; preds = %144
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = load i8*, i8** %8, align 8
  %170 = load i32, i32* %15, align 4
  %171 = call i32 @memcpy(i8* %168, i8* %169, i32 %170)
  br label %210

172:                                              ; preds = %117
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %174 = call i32 @sqlite3VdbeMemRelease(%struct.TYPE_10__* %173)
  %175 = load i8*, i8** %8, align 8
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  store i8* %175, i8** %177, align 8
  %178 = load void (i8*)*, void (i8*)** %11, align 8
  %179 = icmp eq void (i8*)* %178, @SQLITE_DYNAMIC
  br i1 %179, label %180, label %195

180:                                              ; preds = %172
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  store i8* %183, i8** %185, align 8
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 6
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @sqlite3DbMallocSize(%struct.TYPE_11__* %188, i8* %191)
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %193, i32 0, i32 7
  store i32 %192, i32* %194, align 8
  br label %209

195:                                              ; preds = %172
  %196 = load void (i8*)*, void (i8*)** %11, align 8
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 2
  store void (i8*)* %196, void (i8*)** %198, align 8
  %199 = load void (i8*)*, void (i8*)** %11, align 8
  %200 = icmp eq void (i8*)* %199, @SQLITE_STATIC
  br i1 %200, label %201, label %203

201:                                              ; preds = %195
  %202 = load i32, i32* @MEM_Static, align 4
  br label %205

203:                                              ; preds = %195
  %204 = load i32, i32* @MEM_Dyn, align 4
  br label %205

205:                                              ; preds = %203, %201
  %206 = phi i32 [ %202, %201 ], [ %204, %203 ]
  %207 = load i32, i32* %14, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %14, align 4
  br label %209

209:                                              ; preds = %205, %180
  br label %210

210:                                              ; preds = %209, %165
  %211 = load i32, i32* %12, align 4
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 3
  store i32 %211, i32* %213, align 8
  %214 = load i32, i32* %14, align 4
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 4
  store i32 %214, i32* %216, align 4
  %217 = load i64, i64* %10, align 8
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %210
  %220 = load i64, i64* @SQLITE_UTF8, align 8
  br label %223

221:                                              ; preds = %210
  %222 = load i64, i64* %10, align 8
  br label %223

223:                                              ; preds = %221, %219
  %224 = phi i64 [ %220, %219 ], [ %222, %221 ]
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 5
  store i64 %224, i64* %226, align 8
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 5
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @SQLITE_UTF8, align 8
  %231 = icmp ne i64 %229, %230
  br i1 %231, label %232, label %238

232:                                              ; preds = %223
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %234 = call i64 @sqlite3VdbeMemHandleBom(%struct.TYPE_10__* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %232
  %237 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %237, i32* %6, align 4
  br label %246

238:                                              ; preds = %232, %223
  %239 = load i32, i32* %12, align 4
  %240 = load i32, i32* %13, align 4
  %241 = icmp sgt i32 %239, %240
  br i1 %241, label %242, label %244

242:                                              ; preds = %238
  %243 = load i32, i32* @SQLITE_TOOBIG, align 4
  store i32 %243, i32* %6, align 4
  br label %246

244:                                              ; preds = %238
  %245 = load i32, i32* @SQLITE_OK, align 4
  store i32 %245, i32* %6, align 4
  br label %246

246:                                              ; preds = %244, %242, %236, %163, %138, %41
  %247 = load i32, i32* %6, align 4
  ret i32 %247
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @sqlite3VdbeMemIsRowSet(%struct.TYPE_10__*) #1

declare dso_local i32 @sqlite3VdbeMemSetNull(%struct.TYPE_10__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local void @SQLITE_TRANSIENT(i8*) #1

declare dso_local i32 @sqlite3ErrorToParser(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @testcase(i32) #1

declare dso_local i64 @sqlite3VdbeMemClearAndResize(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sqlite3VdbeMemRelease(%struct.TYPE_10__*) #1

declare dso_local void @SQLITE_DYNAMIC(i8*) #1

declare dso_local i32 @sqlite3DbMallocSize(%struct.TYPE_11__*, i8*) #1

declare dso_local void @SQLITE_STATIC(i8*) #1

declare dso_local i64 @sqlite3VdbeMemHandleBom(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
