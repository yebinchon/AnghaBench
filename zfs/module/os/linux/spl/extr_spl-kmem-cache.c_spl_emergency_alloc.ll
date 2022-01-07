; ModuleID = '/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kmem-cache.c_spl_emergency_alloc.c'
source_filename = "/home/carl/AnghaBench/zfs/module/os/linux/spl/extr_spl-kmem-cache.c_spl_emergency_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i8**)* @spl_emergency_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spl_emergency_alloc(%struct.TYPE_8__* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @kmem_flags_convert(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @get_order(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 5
  %23 = call i32 @list_empty(i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = call i32 @spin_unlock(i32* %25)
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @EEXIST, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %115

32:                                               ; preds = %3
  %33 = load i32, i32* %8, align 4
  %34 = call %struct.TYPE_7__* @kmalloc(i32 8, i32 %33)
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %9, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = icmp eq %struct.TYPE_7__* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %115

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i64 @__get_free_pages(i32 %41, i32 %42)
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %40
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %52 = call i32 @kfree(%struct.TYPE_7__* %51)
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %115

55:                                               ; preds = %40
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = call i32 @spin_lock(i32* %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %62 = call i32 @spl_emergency_insert(i32* %60, %struct.TYPE_7__* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i64 @likely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %55
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %77, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %66
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %82, %66
  br label %89

89:                                               ; preds = %88, %55
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = call i32 @spin_unlock(i32* %91)
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %89
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @free_pages(i64 %102, i32 %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %106 = call i32 @kfree(%struct.TYPE_7__* %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %115

109:                                              ; preds = %89
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = load i8**, i8*** %7, align 8
  store i8* %113, i8** %114, align 8
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %109, %99, %50, %37, %29
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @kmem_flags_convert(i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.TYPE_7__* @kmalloc(i32, i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

declare dso_local i32 @spl_emergency_insert(i32*, %struct.TYPE_7__*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
