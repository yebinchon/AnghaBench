; ModuleID = '/home/carl/AnghaBench/upx/src/stub/src/extr_i386-bsd.elf-main.c_xfind_pages.c'
source_filename = "/home/carl/AnghaBench/upx/src/stub/src/extr_i386-bsd.elf-main.c_xfind_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@PT_LOAD = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@PROT_NONE = common dso_local global i32 0, align 4
@MAP_ANON_FD = common dso_local global i32 0, align 4
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
  %13 = call i32 (...) @STR_xfind_pages()
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i8**, i8*** %8, align 8
  %18 = ptrtoint i8** %17 to i32
  %19 = call i32 @DPRINTF(i32 %18)
  %20 = load i32, i32* @MAP_PRIVATE, align 4
  %21 = load i32, i32* @MAP_ANONYMOUS, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %5, align 4
  %24 = add i32 %23, %22
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %68, %4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %7, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %25
  %30 = load i64, i64* @PT_LOAD, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %67

35:                                               ; preds = %29
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %41, %35
  %49 = load i64, i64* %10, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %52, %55
  %57 = icmp ult i64 %49, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %61, %64
  store i64 %65, i64* %10, align 8
  br label %66

66:                                               ; preds = %58, %48
  br label %67

67:                                               ; preds = %66, %29
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 1
  store %struct.TYPE_3__* %70, %struct.TYPE_3__** %6, align 8
  br label %25

71:                                               ; preds = %25
  %72 = load i64, i64* @PAGE_MASK, align 8
  %73 = xor i64 %72, -1
  %74 = load i64, i64* %9, align 8
  %75 = and i64 %73, %74
  %76 = load i64, i64* %11, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* @PAGE_MASK, align 8
  %79 = xor i64 %78, -1
  %80 = load i64, i64* %9, align 8
  %81 = and i64 %79, %80
  %82 = load i64, i64* %9, align 8
  %83 = sub i64 %82, %81
  store i64 %83, i64* %9, align 8
  %84 = load i64, i64* @PAGE_MASK, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %9, align 8
  %87 = sub i64 %85, %86
  %88 = load i64, i64* @PAGE_MASK, align 8
  %89 = sub i64 %87, %88
  %90 = sub i64 %89, 1
  %91 = and i64 %84, %90
  store i64 %91, i64* %10, align 8
  %92 = load i64, i64* @PAGE_MASK, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* @PAGE_MASK, align 8
  %95 = sub i64 %93, %94
  %96 = sub i64 %95, 1
  %97 = and i64 %92, %96
  store i64 %97, i64* %11, align 8
  %98 = load i64, i64* %9, align 8
  %99 = inttoptr i64 %98 to i8*
  %100 = load i64, i64* %10, align 8
  %101 = load i32, i32* @PROT_NONE, align 4
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @MAP_ANON_FD, align 4
  %104 = call i8* @mmap(i8* %99, i64 %100, i32 %101, i32 %102, i32 %103, i32 0)
  store i8* %104, i8** %12, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 %105
  %108 = load i8**, i8*** %8, align 8
  store i8* %107, i8** %108, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = ptrtoint i8* %109 to i64
  %111 = load i64, i64* %9, align 8
  %112 = sub i64 %110, %111
  ret i64 %112
}

declare dso_local i32 @DPRINTF(i32) #1

declare dso_local i32 @STR_xfind_pages(...) #1

declare dso_local i8* @mmap(i8*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
