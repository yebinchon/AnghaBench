; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdesktop.c_rd_open_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdesktop.c_rd_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s/.rdesktop/%s\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rd_open_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %31

11:                                               ; preds = %1
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %13, i8* %14)
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %17 = load i32, i32* @O_RDWR, align 4
  %18 = load i32, i32* @O_CREAT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @S_IRUSR, align 4
  %21 = load i32, i32* @S_IWUSR, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @open(i8* %16, i32 %19, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %29

26:                                               ; preds = %11
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %28 = call i32 @perror(i8* %27)
  br label %29

29:                                               ; preds = %26, %11
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %10
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
