; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_urlcache_entry_alloc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_urlcache_entry_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [45 x i8] c"Found free blocks starting at no. %d (0x%x)\0A\00", align 1
@ENTRY_START_OFFSET = common dso_local global i32 0, align 4
@BLOCKSIZE = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_HANDLE_DISK_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i64, %struct.TYPE_6__**)* @urlcache_entry_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urlcache_entry_alloc(%struct.TYPE_5__* %0, i64 %1, %struct.TYPE_6__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %7, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %113, %3
  %12 = load i64, i64* %8, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %118

17:                                               ; preds = %11
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %41, %17
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = add nsw i64 %23, %24
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i64 @urlcache_block_is_free(i32 %33, i64 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %30, %22, %18
  %40 = phi i1 [ false, %22 ], [ false, %18 ], [ %38, %30 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = load i64, i64* %9, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %9, align 8
  br label %18

44:                                               ; preds = %39
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %112

48:                                               ; preds = %44
  %49 = load i64, i64* %8, align 8
  %50 = load i32, i32* @ENTRY_START_OFFSET, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @BLOCKSIZE, align 8
  %54 = mul nsw i64 %52, %53
  %55 = add nsw i64 %51, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32 @TRACE(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %49, i32 %56)
  store i64 0, i64* %10, align 8
  br label %58

58:                                               ; preds = %70, %48
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %58
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %10, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @urlcache_block_alloc(i32 %65, i64 %68)
  br label %70

70:                                               ; preds = %62
  %71 = load i64, i64* %10, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %10, align 8
  br label %58

73:                                               ; preds = %58
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = bitcast %struct.TYPE_5__* %74 to i32*
  %76 = load i32, i32* @ENTRY_START_OFFSET, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @BLOCKSIZE, align 8
  %81 = mul nsw i64 %79, %80
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = bitcast i32* %82 to %struct.TYPE_6__*
  %84 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %83, %struct.TYPE_6__** %84, align 8
  store i64 0, i64* %10, align 8
  br label %85

85:                                               ; preds = %98, %73
  %86 = load i64, i64* %10, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @BLOCKSIZE, align 8
  %89 = mul nsw i64 %87, %88
  %90 = udiv i64 %89, 8
  %91 = icmp ult i64 %86, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %85
  %93 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = bitcast %struct.TYPE_6__* %94 to i64*
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  store i64 3735928559, i64* %97, align 8
  br label %98

98:                                               ; preds = %92
  %99 = load i64, i64* %10, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %10, align 8
  br label %85

101:                                              ; preds = %85
  %102 = load i64, i64* %6, align 8
  %103 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  store i64 %102, i64* %105, align 8
  %106 = load i64, i64* %6, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, %106
  store i64 %110, i64* %108, align 8
  %111 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %111, i64* %4, align 8
  br label %120

112:                                              ; preds = %44
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %9, align 8
  %115 = add nsw i64 %114, 1
  %116 = load i64, i64* %8, align 8
  %117 = add nsw i64 %116, %115
  store i64 %117, i64* %8, align 8
  br label %11

118:                                              ; preds = %11
  %119 = load i64, i64* @ERROR_HANDLE_DISK_FULL, align 8
  store i64 %119, i64* %4, align 8
  br label %120

120:                                              ; preds = %118, %101
  %121 = load i64, i64* %4, align 8
  ret i64 %121
}

declare dso_local i64 @urlcache_block_is_free(i32, i64) #1

declare dso_local i32 @TRACE(i8*, i64, i32) #1

declare dso_local i32 @urlcache_block_alloc(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
