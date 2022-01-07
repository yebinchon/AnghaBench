; ModuleID = '/home/carl/AnghaBench/upx/src/stub/src/extr_i386-linux.elf.shell-main.c_xfind_pages.c'
source_filename = "/home/carl/AnghaBench/upx/src/stub/src/extr_i386-linux.elf.shell-main.c_xfind_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@PT_LOAD = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_3__*, i32)* @xfind_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xfind_pages(i32 %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 -1, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load i32, i32* @MAP_PRIVATE, align 4
  %12 = load i32, i32* @MAP_ANONYMOUS, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %4, align 4
  %15 = add i32 %14, %13
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %59, %3
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %6, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %16
  %21 = load i64, i64* @PT_LOAD, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %20
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %32, %26
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %43, %46
  %48 = icmp ult i64 %40, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %52, %55
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %49, %39
  br label %58

58:                                               ; preds = %57, %20
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 1
  store %struct.TYPE_3__* %61, %struct.TYPE_3__** %5, align 8
  br label %16

62:                                               ; preds = %16
  %63 = load i32, i32* @MAP_FIXED, align 4
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i64, i64* %8, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 @do_brk(i8* %69)
  br label %71

71:                                               ; preds = %67, %62
  %72 = load i64, i64* @PAGE_MASK, align 8
  %73 = xor i64 %72, -1
  %74 = load i64, i64* %7, align 8
  %75 = and i64 %73, %74
  %76 = load i64, i64* %9, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* @PAGE_MASK, align 8
  %79 = xor i64 %78, -1
  %80 = load i64, i64* %7, align 8
  %81 = and i64 %79, %80
  %82 = load i64, i64* %7, align 8
  %83 = sub i64 %82, %81
  store i64 %83, i64* %7, align 8
  %84 = load i64, i64* @PAGE_MASK, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %7, align 8
  %87 = sub i64 %85, %86
  %88 = load i64, i64* @PAGE_MASK, align 8
  %89 = sub i64 %87, %88
  %90 = sub i64 %89, 1
  %91 = and i64 %84, %90
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* @PAGE_MASK, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* @PAGE_MASK, align 8
  %95 = sub i64 %93, %94
  %96 = sub i64 %95, 1
  %97 = and i64 %92, %96
  store i64 %97, i64* %9, align 8
  %98 = load i64, i64* %7, align 8
  %99 = inttoptr i64 %98 to i8*
  %100 = load i64, i64* %8, align 8
  %101 = load i32, i32* @PROT_READ, align 4
  %102 = load i32, i32* @PROT_WRITE, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @PROT_EXEC, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* %4, align 4
  %107 = call i8* @mmap(i8* %99, i64 %100, i32 %105, i32 %106, i32 -1, i32 0)
  store i8* %107, i8** %10, align 8
  %108 = load i8*, i8** %10, align 8
  %109 = ptrtoint i8* %108 to i64
  %110 = load i64, i64* %7, align 8
  %111 = sub i64 %109, %110
  ret i64 %111
}

declare dso_local i32 @do_brk(i8*) #1

declare dso_local i8* @mmap(i8*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
