; ModuleID = '/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_walIteratorInit.c'
source_filename = "/home/carl/AnghaBench/wcdb/android/sqlcipher/extr_sqlite3.c_walIteratorInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, i32*, i64* }
%struct.TYPE_15__ = type { i32, i64, i64 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_NOMEM_BKPT = common dso_local global i32 0, align 4
@HASHTABLE_NPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, %struct.TYPE_14__**)* @walIteratorInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walIteratorInit(%struct.TYPE_16__* %0, i32 %1, %struct.TYPE_14__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__**, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_14__** %2, %struct.TYPE_14__*** %7, align 8
  %19 = load i32, i32* @SQLITE_OK, align 4
  store i32 %19, i32* %14, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %28, 0
  br label %30

30:                                               ; preds = %24, %3
  %31 = phi i1 [ false, %3 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @walFramePage(i32 %39)
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = add i64 16, %45
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 8
  %50 = add i64 %46, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @sqlite3_malloc64(i32 %52)
  %54 = inttoptr i64 %53 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %8, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %56 = icmp ne %struct.TYPE_14__* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %30
  %58 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %58, i32* %4, align 4
  br label %221

59:                                               ; preds = %30
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @memset(%struct.TYPE_14__* %60, i32 0, i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @HASHTABLE_NPAGE, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i32, i32* @HASHTABLE_NPAGE, align 4
  br label %73

71:                                               ; preds = %59
  %72 = load i32, i32* %10, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  %75 = sext i32 %74 to i64
  %76 = mul i64 8, %75
  %77 = trunc i64 %76 to i32
  %78 = call i64 @sqlite3_malloc64(i32 %77)
  %79 = inttoptr i64 %78 to i64*
  store i64* %79, i64** %13, align 8
  %80 = load i64*, i64** %13, align 8
  %81 = icmp ne i64* %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %73
  %83 = load i32, i32* @SQLITE_NOMEM_BKPT, align 4
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %82, %73
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i32 @walFramePage(i32 %86)
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %205, %84
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @SQLITE_OK, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %93, %94
  br label %96

96:                                               ; preds = %92, %88
  %97 = phi i1 [ false, %88 ], [ %95, %92 ]
  br i1 %97, label %98, label %208

98:                                               ; preds = %96
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @walHashGet(%struct.TYPE_16__* %99, i32 %100, %struct.TYPE_15__* %15)
  store i32 %101, i32* %14, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @SQLITE_OK, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %204

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 1
  store i64 %108, i64* %106, align 8
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  %111 = load i32, i32* %9, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %105
  %114 = load i32, i32* %10, align 4
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %114, %116
  store i32 %117, i32* %17, align 4
  br label %130

118:                                              ; preds = %105
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to i32*
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = inttoptr i64 %123 to i32*
  %125 = ptrtoint i32* %121 to i64
  %126 = ptrtoint i32* %124 to i64
  %127 = sub i64 %125, %126
  %128 = sdiv exact i64 %127, 4
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %17, align 4
  br label %130

130:                                              ; preds = %118, %113
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %132, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i64 %137
  %139 = bitcast %struct.TYPE_13__* %138 to i64*
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %139, i64 %142
  store i64* %143, i64** %18, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 8
  store i32 0, i32* %16, align 4
  br label %147

147:                                              ; preds = %158, %130
  %148 = load i32, i32* %16, align 4
  %149 = load i32, i32* %17, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %147
  %152 = load i32, i32* %16, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64*, i64** %18, align 8
  %155 = load i32, i32* %16, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i64, i64* %154, i64 %156
  store i64 %153, i64* %157, align 8
  br label %158

158:                                              ; preds = %151
  %159 = load i32, i32* %16, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %16, align 4
  br label %147

161:                                              ; preds = %147
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to i32*
  %165 = load i64*, i64** %13, align 8
  %166 = load i64*, i64** %18, align 8
  %167 = call i32 @walMergesort(i32* %164, i64* %165, i64* %166, i32* %17)
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %172, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  store i64 %170, i64* %177, align 8
  %178 = load i32, i32* %17, align 4
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %180, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  store i32 %178, i32* %185, align 8
  %186 = load i64*, i64** %18, align 8
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %188, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 3
  store i64* %186, i64** %193, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = inttoptr i64 %195 to i32*
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %198, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 2
  store i32* %196, i32** %203, align 8
  br label %204

204:                                              ; preds = %161, %98
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %12, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %12, align 4
  br label %88

208:                                              ; preds = %96
  %209 = load i64*, i64** %13, align 8
  %210 = call i32 @sqlite3_free(i64* %209)
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* @SQLITE_OK, align 4
  %213 = icmp ne i32 %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %208
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %216 = call i32 @walIteratorFree(%struct.TYPE_14__* %215)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %8, align 8
  br label %217

217:                                              ; preds = %214, %208
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %219 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* %218, %struct.TYPE_14__** %219, align 8
  %220 = load i32, i32* %14, align 4
  store i32 %220, i32* %4, align 4
  br label %221

221:                                              ; preds = %217, %57
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @walFramePage(i32) #1

declare dso_local i64 @sqlite3_malloc64(i32) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @walHashGet(%struct.TYPE_16__*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @walMergesort(i32*, i64*, i64*, i32*) #1

declare dso_local i32 @sqlite3_free(i64*) #1

declare dso_local i32 @walIteratorFree(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
