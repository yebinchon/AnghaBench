; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb3.c_testEnvWrite.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb3.c_testEnvWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (i32, i32, i8*, i32)*, i32 (i32, i32, i32*, i32)* }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32 (i32, i64, i32, i32, i32)*, %struct.TYPE_13__*, i64, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.timeval = type { i32, i32 }

@LSM_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32)* @testEnvWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testEnvWrite(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.timeval, align 4
  %22 = alloca %struct.timeval, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = call %struct.TYPE_9__* (...) @tdb_lsm_env()
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %10, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = bitcast i32* %24 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %11, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  store %struct.TYPE_11__* %28, %struct.TYPE_11__** %12, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i32, i32* @LSM_IOERR, align 4
  store i32 %34, i32* %5, align 4
  br label %220

35:                                               ; preds = %4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %161

40:                                               ; preds = %35
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i64 %46
  store %struct.TYPE_13__* %47, %struct.TYPE_13__** %13, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %48, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %53, %54
  %56 = sub nsw i32 %55, 1
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sdiv i32 %56, %59
  store i32 %60, i32* %15, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %109

67:                                               ; preds = %40
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, 1
  %70 = add nsw i32 %69, 63
  %71 = sdiv i32 %70, 64
  %72 = mul nsw i32 %71, 64
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp sgt i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 8
  %84 = trunc i64 %83 to i32
  %85 = call i64 @testRealloc(%struct.TYPE_12__* %80, i32 %84)
  %86 = inttoptr i64 %85 to %struct.TYPE_12__*
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  store %struct.TYPE_12__* %86, %struct.TYPE_12__** %88, align 8
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i64 %95
  %97 = load i32, i32* %17, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sub nsw i32 %97, %100
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 @memset(%struct.TYPE_12__* %96, i32 0, i32 %104)
  %106 = load i32, i32* %17, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %109

109:                                              ; preds = %67, %40
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %16, align 4
  br label %111

111:                                              ; preds = %157, %109
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %15, align 4
  %114 = icmp sle i32 %112, %113
  br i1 %114, label %115, label %160

115:                                              ; preds = %111
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = load i32, i32* %16, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %156

125:                                              ; preds = %115
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @testMalloc(i32 %128)
  %130 = inttoptr i64 %129 to i32*
  store i32* %130, i32** %18, align 8
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 1
  %133 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %132, align 8
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %16, align 4
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = mul nsw i32 %137, %140
  %142 = load i32*, i32** %18, align 8
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 %133(i32 %136, i32 %141, i32* %142, i32 %145)
  %147 = load i32*, i32** %18, align 8
  %148 = ptrtoint i32* %147 to i64
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = load i32, i32* %16, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  store i64 %148, i64* %155, align 8
  br label %156

156:                                              ; preds = %125, %115
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %16, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %16, align 4
  br label %111

160:                                              ; preds = %111
  br label %161

161:                                              ; preds = %160, %35
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 2
  %164 = load i32 (i32, i64, i32, i32, i32)*, i32 (i32, i64, i32, i32, i32)** %163, align 8
  %165 = icmp ne i32 (i32, i64, i32, i32, i32)* %164, null
  br i1 %165, label %166, label %209

166:                                              ; preds = %161
  %167 = call i32 @gettimeofday(%struct.timeval* %21, i32 0)
  %168 = load i32, i32* %9, align 4
  %169 = icmp sgt i32 %168, 0
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i32 (i32, i32, i8*, i32)*, i32 (i32, i32, i8*, i32)** %173, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %7, align 4
  %179 = load i8*, i8** %8, align 8
  %180 = load i32, i32* %9, align 4
  %181 = call i32 %174(i32 %177, i32 %178, i8* %179, i32 %180)
  store i32 %181, i32* %19, align 4
  %182 = call i32 @gettimeofday(%struct.timeval* %22, i32 0)
  %183 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %184, %186
  %188 = mul nsw i32 %187, 1000000
  %189 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = getelementptr inbounds %struct.timeval, %struct.timeval* %21, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %190, %192
  %194 = add nsw i32 %188, %193
  store i32 %194, i32* %20, align 4
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 2
  %197 = load i32 (i32, i64, i32, i32, i32)*, i32 (i32, i64, i32, i32, i32)** %196, align 8
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i32, i32* %7, align 4
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* %20, align 4
  %207 = call i32 %197(i32 %200, i64 %203, i32 %204, i32 %205, i32 %206)
  %208 = load i32, i32* %19, align 4
  store i32 %208, i32* %5, align 4
  br label %220

209:                                              ; preds = %161
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load i32 (i32, i32, i8*, i32)*, i32 (i32, i32, i8*, i32)** %211, align 8
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %7, align 4
  %217 = load i8*, i8** %8, align 8
  %218 = load i32, i32* %9, align 4
  %219 = call i32 %212(i32 %215, i32 %216, i8* %217, i32 %218)
  store i32 %219, i32* %5, align 4
  br label %220

220:                                              ; preds = %209, %166, %33
  %221 = load i32, i32* %5, align 4
  ret i32 %221
}

declare dso_local %struct.TYPE_9__* @tdb_lsm_env(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @testRealloc(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @testMalloc(i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
