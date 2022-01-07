; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_pageGetBtreeKey.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_pageGetBtreeKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@SEGMENT_BTREE_FLAG = common dso_local global i32 0, align 4
@LSM_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*, i32*, i8**, i32*, %struct.TYPE_4__*)* @pageGetBtreeKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pageGetBtreeKey(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4, i8** %5, i32* %6, %struct.TYPE_4__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_4__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i8** %5, i8*** %15, align 8
  store i32* %6, i32** %16, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %17, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32* @fsPageData(i32* %25, i32* %19)
  store i32* %26, i32** %18, align 8
  %27 = load i32, i32* @SEGMENT_BTREE_FLAG, align 4
  %28 = load i32*, i32** %18, align 8
  %29 = load i32, i32* %19, align 4
  %30 = call i32 @pageGetFlags(i32* %28, i32 %29)
  %31 = and i32 %27, %30
  %32 = call i32 @assert(i32 %31)
  %33 = load i32, i32* %12, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %8
  %36 = load i32, i32* %12, align 4
  %37 = load i32*, i32** %18, align 8
  %38 = load i32, i32* %19, align 4
  %39 = call i32 @pageGetNRec(i32* %37, i32 %38)
  %40 = icmp slt i32 %36, %39
  br label %41

41:                                               ; preds = %35, %8
  %42 = phi i1 [ false, %8 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32*, i32** %18, align 8
  %46 = load i32, i32* %19, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32* @pageGetCell(i32* %45, i32 %46, i32 %47)
  store i32* %48, i32** %20, align 8
  %49 = load i32*, i32** %20, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %20, align 8
  %51 = load i32, i32* %49, align 4
  store i32 %51, i32* %21, align 4
  %52 = load i32*, i32** %20, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @GETVARINT64(i32* %52, i32 %54)
  %56 = load i32*, i32** %20, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %20, align 8
  %59 = load i32, i32* %21, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %41
  %62 = load i32*, i32** %20, align 8
  %63 = load i32, i32* %23, align 4
  %64 = call i32 @GETVARINT64(i32* %62, i32 %63)
  %65 = load i32*, i32** %20, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %20, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @lsmPageFS(i32* %68)
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %23, align 4
  %72 = call i32 @lsmFsDbPageGet(i32 %69, i32* %70, i32 %71, i32** %24)
  store i32 %72, i32* %22, align 4
  %73 = load i32, i32* %22, align 4
  %74 = load i32, i32* @LSM_OK, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %61
  %77 = load i32, i32* %22, align 4
  store i32 %77, i32* %9, align 4
  br label %115

78:                                               ; preds = %61
  %79 = load i32*, i32** %11, align 8
  %80 = call i32 @lsmPageEnv(i32* %79)
  %81 = load i32*, i32** %10, align 8
  %82 = load i32*, i32** %24, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %84 = call i32 @pageGetKeyCopy(i32 %80, i32* %81, i32* %82, i32 0, i32* %21, %struct.TYPE_4__* %83)
  %85 = load i32*, i32** %24, align 8
  %86 = call i32 @lsmFsPageRelease(i32* %85)
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load i8**, i8*** %15, align 8
  store i8* %89, i8** %90, align 8
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32*, i32** %16, align 8
  store i32 %93, i32* %94, align 4
  br label %106

95:                                               ; preds = %41
  %96 = load i32*, i32** %20, align 8
  %97 = load i32*, i32** %16, align 8
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @GETVARINT32(i32* %96, i32 %98)
  %100 = load i32*, i32** %20, align 8
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  store i32* %102, i32** %20, align 8
  %103 = load i32*, i32** %20, align 8
  %104 = bitcast i32* %103 to i8*
  %105 = load i8**, i8*** %15, align 8
  store i8* %104, i8** %105, align 8
  br label %106

106:                                              ; preds = %95, %78
  %107 = load i32*, i32** %14, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* %21, align 4
  %111 = call i32 @rtTopic(i32 %110)
  %112 = load i32*, i32** %14, align 8
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i32, i32* @LSM_OK, align 4
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %113, %76
  %116 = load i32, i32* %9, align 4
  ret i32 %116
}

declare dso_local i32* @fsPageData(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pageGetFlags(i32*, i32) #1

declare dso_local i32 @pageGetNRec(i32*, i32) #1

declare dso_local i32* @pageGetCell(i32*, i32, i32) #1

declare dso_local i32 @GETVARINT64(i32*, i32) #1

declare dso_local i32 @lsmFsDbPageGet(i32, i32*, i32, i32**) #1

declare dso_local i32 @lsmPageFS(i32*) #1

declare dso_local i32 @pageGetKeyCopy(i32, i32*, i32*, i32, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @lsmPageEnv(i32*) #1

declare dso_local i32 @lsmFsPageRelease(i32*) #1

declare dso_local i32 @GETVARINT32(i32*, i32) #1

declare dso_local i32 @rtTopic(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
