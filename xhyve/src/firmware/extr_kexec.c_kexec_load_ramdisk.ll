; ModuleID = '/home/carl/AnghaBench/xhyve/src/firmware/extr_kexec.c_kexec_load_ramdisk.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/firmware/extr_kexec.c_kexec_load_ramdisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.zero_page = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i64 }

@lowmem = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@BASE_ZEROPAGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@ramdisk = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @kexec_load_ramdisk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kexec_load_ramdisk(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.zero_page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lowmem, i32 0, i32 1), align 8
  %10 = load i64, i64* @BASE_ZEROPAGE, align 8
  %11 = add nsw i64 %9, %10
  %12 = inttoptr i64 %11 to %struct.zero_page*
  store %struct.zero_page* %12, %struct.zero_page** %6, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %14, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %90

17:                                               ; preds = %1
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* @SEEK_END, align 4
  %20 = call i32 @fseek(i32* %18, i64 0, i32 %19)
  %21 = load i32*, i32** %8, align 8
  %22 = call i64 @ftell(i32* %21)
  store i64 %22, i64* %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* @SEEK_SET, align 4
  %25 = call i32 @fseek(i32* %23, i64 0, i32 %24)
  %26 = load %struct.zero_page*, %struct.zero_page** %6, align 8
  %27 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load volatile i32, i32* %28, align 8
  %30 = icmp sge i32 %29, 515
  br i1 %30, label %31, label %36

31:                                               ; preds = %17
  %32 = load %struct.zero_page*, %struct.zero_page** %6, align 8
  %33 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load volatile i64, i64* %34, align 8
  store i64 %35, i64* %5, align 8
  br label %37

36:                                               ; preds = %17
  store i64 939524095, i64* %5, align 8
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lowmem, i32 0, i32 0), align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lowmem, i32 0, i32 0), align 8
  %43 = sub i64 %42, 1
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %7, align 8
  %47 = sub i64 %45, %46
  %48 = call i64 @ALIGNDOWN(i64 %47, i32 4096)
  store i64 %48, i64* %4, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %49, %50
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lowmem, i32 0, i32 0), align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @fclose(i32* %55)
  store i32 -1, i32* %2, align 4
  br label %90

57:                                               ; preds = %44
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lowmem, i32 0, i32 1), align 8
  %59 = load i64, i64* %4, align 8
  %60 = add i64 %58, %59
  %61 = inttoptr i64 %60 to i8*
  %62 = load i64, i64* %7, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i32 @fread(i8* %61, i32 1, i64 %62, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %57
  %67 = load i32*, i32** %8, align 8
  %68 = call i32 @fclose(i32* %67)
  store i32 -1, i32* %2, align 4
  br label %90

69:                                               ; preds = %57
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @fclose(i32* %70)
  %72 = load i64, i64* %4, align 8
  %73 = load %struct.zero_page*, %struct.zero_page** %6, align 8
  %74 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  store volatile i64 %72, i64* %75, align 8
  %76 = load i64, i64* %4, align 8
  %77 = lshr i64 %76, 32
  %78 = load %struct.zero_page*, %struct.zero_page** %6, align 8
  %79 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %78, i32 0, i32 0
  store volatile i64 %77, i64* %79, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.zero_page*, %struct.zero_page** %6, align 8
  %82 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  store volatile i64 %80, i64* %83, align 8
  %84 = load i64, i64* %7, align 8
  %85 = lshr i64 %84, 32
  %86 = load %struct.zero_page*, %struct.zero_page** %6, align 8
  %87 = getelementptr inbounds %struct.zero_page, %struct.zero_page* %86, i32 0, i32 1
  store volatile i64 %85, i64* %87, align 8
  %88 = load i64, i64* %4, align 8
  store i64 %88, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ramdisk, i32 0, i32 0), align 8
  %89 = load i64, i64* %7, align 8
  store i64 %89, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ramdisk, i32 0, i32 1), align 8
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %69, %66, %54, %16
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i64 @ALIGNDOWN(i64, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fread(i8*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
