; ModuleID = '/home/carl/AnghaBench/upx/src/stub/src/extr_i386-linux.elf.interp-main.c_xfind_pages.c'
source_filename = "/home/carl/AnghaBench/upx/src/stub/src/extr_i386-linux.elf.interp-main.c_xfind_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@PT_LOAD = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_3__*, i32, i8**)* @xfind_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xfind_pages(i32 %0, %struct.TYPE_3__* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  store i64 -1, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %13 = load i32, i32* @MAP_PRIVATE, align 4
  %14 = load i32, i32* @MAP_ANONYMOUS, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %5, align 4
  %17 = add i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %61, %4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %7, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %18
  %23 = load i64, i64* @PT_LOAD, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %22
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %11, align 8
  br label %41

41:                                               ; preds = %34, %28
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %45, %48
  %50 = icmp ult i64 %42, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %41
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %54, %57
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %51, %41
  br label %60

60:                                               ; preds = %59, %22
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 1
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %6, align 8
  br label %18

64:                                               ; preds = %18
  %65 = load i64, i64* @PAGE_MASK, align 8
  %66 = xor i64 %65, -1
  %67 = load i64, i64* %9, align 8
  %68 = and i64 %66, %67
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %11, align 8
  %71 = load i64, i64* @PAGE_MASK, align 8
  %72 = xor i64 %71, -1
  %73 = load i64, i64* %9, align 8
  %74 = and i64 %72, %73
  %75 = load i64, i64* %9, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* @PAGE_MASK, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* %9, align 8
  %80 = sub i64 %78, %79
  %81 = load i64, i64* @PAGE_MASK, align 8
  %82 = sub i64 %80, %81
  %83 = sub i64 %82, 1
  %84 = and i64 %77, %83
  store i64 %84, i64* %10, align 8
  %85 = load i64, i64* @PAGE_MASK, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* @PAGE_MASK, align 8
  %88 = sub i64 %86, %87
  %89 = sub i64 %88, 1
  %90 = and i64 %85, %89
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* %9, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = load i64, i64* %10, align 8
  %94 = load i32, i32* @PROT_READ, align 4
  %95 = load i32, i32* @PROT_WRITE, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @PROT_EXEC, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %5, align 4
  %100 = call i8* @mmap(i8* %92, i64 %93, i32 %98, i32 %99, i32 0, i32 0)
  store i8* %100, i8** %12, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 %101
  %104 = load i8**, i8*** %8, align 8
  store i8* %103, i8** %104, align 8
  %105 = load i64, i64* %11, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 %105
  %108 = load i64, i64* %10, align 8
  %109 = load i64, i64* %11, align 8
  %110 = sub i64 %108, %109
  %111 = call i32 @munmap(i8* %107, i64 %110)
  %112 = load i8*, i8** %12, align 8
  %113 = ptrtoint i8* %112 to i64
  %114 = load i64, i64* %9, align 8
  %115 = sub i64 %113, %114
  ret i64 %115
}

declare dso_local i8* @mmap(i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
