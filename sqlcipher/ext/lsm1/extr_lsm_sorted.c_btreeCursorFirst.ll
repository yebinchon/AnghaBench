; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_btreeCursorFirst.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_btreeCursorFirst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_10__*, i32* }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_10__ = type { i64 }

@LSM_OK = common dso_local global i32 0, align 4
@SEGMENT_BTREE_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @btreeCursorFirst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btreeCursorFirst(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  store i32* null, i32** %4, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %127, %1
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @lsmFsDbPageGet(i32* %21, %struct.TYPE_10__* %24, i32 %25, i32** %4)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @LSM_OK, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32*, i32** %4, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = icmp eq i32 %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @LSM_OK, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %126

40:                                               ; preds = %20
  %41 = load i32*, i32** %4, align 8
  %42 = call i32* @fsPageData(i32* %41, i32* %8)
  store i32* %42, i32** %7, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @pageGetFlags(i32* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @SEGMENT_BTREE_FLAG, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %131

51:                                               ; preds = %40
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = srem i32 %54, 8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %51
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 8
  store i32 %61, i32* %10, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = call i32 @lsmFsEnv(i32* %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 16, %68
  %70 = trunc i64 %69 to i32
  %71 = call i64 @lsmReallocOrFreeRc(i32 %63, %struct.TYPE_8__* %66, i32 %70, i32* %3)
  %72 = inttoptr i64 %71 to %struct.TYPE_8__*
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %74, align 8
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @LSM_OK, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %57
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i64 %85
  %87 = call i32 @memset(%struct.TYPE_8__* %86, i32 0, i32 128)
  br label %88

88:                                               ; preds = %78, %57
  br label %89

89:                                               ; preds = %88, %51
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @LSM_OK, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %125

93:                                               ; preds = %89
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @assert(i32 %105)
  %107 = load i32*, i32** %4, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  store i32* %107, i32** %116, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i64 @pageGetRecordPtr(i32* %121, i32 %122, i32 0)
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %93, %89
  br label %126

126:                                              ; preds = %125, %20
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* @LSM_OK, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %20, label %131

131:                                              ; preds = %127, %50
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 @lsmFsPageRelease(i32* %132)
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sub nsw i32 %136, 1
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* @LSM_OK, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %160

143:                                              ; preds = %131
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %160

148:                                              ; preds = %143
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %150, align 8
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  store i32 -1, i32* %157, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %159 = call i32 @btreeCursorNext(%struct.TYPE_9__* %158)
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %148, %143, %131
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @lsmFsDbPageGet(i32*, %struct.TYPE_10__*, i32, i32**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @fsPageData(i32*, i32*) #1

declare dso_local i32 @pageGetFlags(i32*, i32) #1

declare dso_local i64 @lsmReallocOrFreeRc(i32, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @lsmFsEnv(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @pageGetRecordPtr(i32*, i32, i32) #1

declare dso_local i32 @lsmFsPageRelease(i32*) #1

declare dso_local i32 @btreeCursorNext(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
