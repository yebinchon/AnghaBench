; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/isohybrid/extr_isohybrid.c_read_mbr_template.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/isohybrid/extr_isohybrid.c_read_mbr_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"could not open MBR template file `%s'\00", align 1
@MBRSIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"error while reading MBR template file `%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_mbr_template(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @err(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @clearerr(i32* %15)
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* @MBRSIZE, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @fread(i32* %17, i32 1, i64 %18, i32* %19)
  store i64 %20, i64* %6, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @ferror(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @MBRSIZE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %14
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %28, %24
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @fclose(i32* %32)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @clearerr(i32*) #1

declare dso_local i64 @fread(i32*, i32, i64, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
