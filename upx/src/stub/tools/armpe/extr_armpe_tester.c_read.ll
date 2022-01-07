; ModuleID = '/home/carl/AnghaBench/upx/src/stub/tools/armpe/extr_armpe_tester.c_read.c'
source_filename = "/home/carl/AnghaBench/upx/src/stub/tools/armpe/extr_armpe_tester.c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i32, i32 }

@UPX_MMAP_ADDRESS = common dso_local global i64 0, align 8
@ih = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PROT_WRITE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_ANONYMOUS = common dso_local global i32 0, align 4
@MAP_FIXED = common dso_local global i32 0, align 4
@vaddr = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"mmap() failed: %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"mmap for %p (size %x) successful\0A\00", align 1
@f = common dso_local global i32 0, align 4
@isections = common dso_local global %struct.TYPE_3__* null, align 8
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"error reading section %u\0A\00", align 1
@MEM_COMMIT = common dso_local global i32 0, align 4
@PAGE_EXECUTE_READWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @UPX_MMAP_ADDRESS, align 8
  %4 = inttoptr i64 %3 to i8*
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ih, i32 0, i32 1), align 8
  %6 = load i32, i32* @PROT_WRITE, align 4
  %7 = load i32, i32* @PROT_READ, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @PROT_EXEC, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MAP_PRIVATE, align 4
  %12 = load i32, i32* @MAP_ANONYMOUS, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MAP_FIXED, align 4
  %15 = or i32 %13, %14
  %16 = call i64 @mmap(i8* %4, i32 %5, i32 %10, i32 %15, i32 -1, i32 0)
  store i64 %16, i64* @vaddr, align 8
  %17 = load i64, i64* @vaddr, align 8
  %18 = trunc i64 %17 to i32
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %0
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %1, align 4
  br label %70

23:                                               ; preds = %0
  %24 = load i64, i64* @vaddr, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ih, i32 0, i32 1), align 8
  %26 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %24, i32 %25)
  store i32 1, i32* %2, align 4
  br label %27

27:                                               ; preds = %66, %23
  %28 = load i32, i32* %2, align 4
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ih, i32 0, i32 0), align 8
  %30 = trunc i64 %29 to i32
  %31 = sub i32 %30, 1
  %32 = icmp ule i32 %28, %31
  br i1 %32, label %33, label %69

33:                                               ; preds = %27
  %34 = load i32, i32* @f, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @isections, align 8
  %36 = load i32, i32* %2, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SEEK_SET, align 4
  %42 = call i64 @fseek(i32 %34, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %33
  %45 = load i64, i64* @vaddr, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @isections, align 8
  %47 = load i32, i32* %2, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %45, %51
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** @isections, align 8
  %54 = load i32, i32* %2, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @f, align 4
  %60 = call i32 @fread(i64 %52, i32 %58, i32 1, i32 %59)
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %65

62:                                               ; preds = %44, %33
  %63 = load i32, i32* %2, align 4
  %64 = call i32 (i8*, ...) @print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  store i32 %64, i32* %1, align 4
  br label %70

65:                                               ; preds = %44
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %2, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %2, align 4
  br label %27

69:                                               ; preds = %27
  store i32 0, i32* %1, align 4
  br label %70

70:                                               ; preds = %69, %62, %20
  %71 = load i32, i32* %1, align 4
  ret i32 %71
}

declare dso_local i64 @mmap(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @print(i8*, ...) #1

declare dso_local i64 @fseek(i32, i32, i32) #1

declare dso_local i32 @fread(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
