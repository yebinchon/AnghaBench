; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyParseJson.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/rtree/extr_geopoly.c_geopolyParseJson.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8*, i32 }
%struct.TYPE_9__ = type { i8*, i32, i32, i64*, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8*, i32*)* @geopolyParseJson to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @geopolyParseJson(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32, i32* @SQLITE_OK, align 4
  store i32 %13, i32* %7, align 4
  %14 = call i32 @memset(%struct.TYPE_9__* %6, i32 0, i32 32)
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = call signext i8 @geopolySkipSpace(%struct.TYPE_9__* %6)
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 91
  br i1 %19, label %20, label %242

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %21, align 8
  br label %24

24:                                               ; preds = %116, %20
  %25 = call signext i8 @geopolySkipSpace(%struct.TYPE_9__* %6)
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 91
  br i1 %27, label %28, label %121

28:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %29, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %33, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 2
  %41 = add nsw i32 %40, 16
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = mul i64 %48, 2
  %50 = trunc i64 %49 to i32
  %51 = call i64* @sqlite3_realloc64(i64* %44, i32 %50)
  store i64* %51, i64** %10, align 8
  %52 = load i64*, i64** %10, align 8
  %53 = icmp eq i64* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %37
  %55 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %55, i32* %7, align 4
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  br label %121

59:                                               ; preds = %37
  %60 = load i64*, i64** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  store i64* %60, i64** %61, align 8
  br label %62

62:                                               ; preds = %59, %28
  br label %63

63:                                               ; preds = %98, %62
  %64 = load i32, i32* %8, align 4
  %65 = icmp sle i32 %64, 1
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %70, 2
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %68, i64 %74
  br label %77

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76, %66
  %78 = phi i64* [ %75, %66 ], [ null, %76 ]
  %79 = call i64 @geopolyParseNumber(%struct.TYPE_9__* %6, i64* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %112

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %86, %81
  %91 = call signext i8 @geopolySkipSpace(%struct.TYPE_9__* %6)
  store i8 %91, i8* %9, align 1
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %92, align 8
  %95 = load i8, i8* %9, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 44
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %63

99:                                               ; preds = %90
  %100 = load i8, i8* %9, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 93
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32, i32* %8, align 4
  %105 = icmp sge i32 %104, 2
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %112

107:                                              ; preds = %103, %99
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %111, i32* %7, align 4
  br label %243

112:                                              ; preds = %106, %77
  %113 = call signext i8 @geopolySkipSpace(%struct.TYPE_9__* %6)
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 44
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %117, align 8
  br label %24

120:                                              ; preds = %112
  br label %121

121:                                              ; preds = %120, %54, %24
  %122 = call signext i8 @geopolySkipSpace(%struct.TYPE_9__* %6)
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 93
  br i1 %124, label %125, label %236

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp sge i32 %127, 4
  br i1 %128, label %129, label %236

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %135 = load i64*, i64** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %137, 2
  %139 = sub nsw i32 %138, 2
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %135, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %133, %142
  br i1 %143, label %144, label %236

144:                                              ; preds = %129
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 1
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = mul nsw i32 %152, 2
  %154 = sub nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %150, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %148, %157
  br i1 %158, label %159, label %236

159:                                              ; preds = %144
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %160, align 8
  %163 = call signext i8 @geopolySkipSpace(%struct.TYPE_9__* %6)
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %236

166:                                              ; preds = %159
  store i32 1, i32* %12, align 4
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %167, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @GEOPOLY_SZ(i32 %171)
  %173 = call %struct.TYPE_8__* @sqlite3_malloc64(i32 %172)
  store %struct.TYPE_8__* %173, %struct.TYPE_8__** %11, align 8
  store i32 1, i32* %12, align 4
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %175 = icmp eq %struct.TYPE_8__* %174, null
  br i1 %175, label %176, label %177

176:                                              ; preds = %166
  br label %243

177:                                              ; preds = %166
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 8
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = mul nsw i32 %188, 2
  %190 = sext i32 %189 to i64
  %191 = mul i64 %190, 8
  %192 = trunc i64 %191 to i32
  %193 = call i32 @memcpy(i32 %184, i64* %186, i32 %192)
  %194 = bitcast i32* %12 to i8*
  %195 = load i8, i8* %194, align 4
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 0
  store i8 %195, i8* %199, align 1
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = ashr i32 %201, 16
  %203 = and i32 %202, 255
  %204 = trunc i32 %203 to i8
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 1
  store i8 %204, i8* %208, align 1
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = ashr i32 %210, 8
  %212 = and i32 %211, 255
  %213 = trunc i32 %212 to i8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  %216 = load i8*, i8** %215, align 8
  %217 = getelementptr inbounds i8, i8* %216, i64 2
  store i8 %213, i8* %217, align 1
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = and i32 %219, 255
  %221 = trunc i32 %220 to i8
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 1
  %224 = load i8*, i8** %223, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 3
  store i8 %221, i8* %225, align 1
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %227 = load i64*, i64** %226, align 8
  %228 = call i32 @sqlite3_free(i64* %227)
  %229 = load i32*, i32** %5, align 8
  %230 = icmp ne i32* %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %177
  %232 = load i32, i32* @SQLITE_OK, align 4
  %233 = load i32*, i32** %5, align 8
  store i32 %232, i32* %233, align 4
  br label %234

234:                                              ; preds = %231, %177
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %235, %struct.TYPE_8__** %3, align 8
  br label %253

236:                                              ; preds = %159, %144, %129, %125, %121
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  %238 = load i32, i32* %237, align 8
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 8
  %240 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %240, i32* %7, align 4
  br label %241

241:                                              ; preds = %236
  br label %242

242:                                              ; preds = %241, %2
  br label %243

243:                                              ; preds = %242, %176, %107
  %244 = load i32*, i32** %5, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = load i32, i32* %7, align 4
  %248 = load i32*, i32** %5, align 8
  store i32 %247, i32* %248, align 4
  br label %249

249:                                              ; preds = %246, %243
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %251 = load i64*, i64** %250, align 8
  %252 = call i32 @sqlite3_free(i64* %251)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %253

253:                                              ; preds = %249, %234
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %254
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local signext i8 @geopolySkipSpace(%struct.TYPE_9__*) #1

declare dso_local i64* @sqlite3_realloc64(i64*, i32) #1

declare dso_local i64 @geopolyParseNumber(%struct.TYPE_9__*, i64*) #1

declare dso_local %struct.TYPE_8__* @sqlite3_malloc64(i32) #1

declare dso_local i32 @GEOPOLY_SZ(i32) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @sqlite3_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
