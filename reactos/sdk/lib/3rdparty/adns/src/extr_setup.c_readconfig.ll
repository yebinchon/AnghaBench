; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_setup.c_readconfig.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_setup.c_readconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"configuration file `%s' does not exist\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"cannot open configuration file `%s': %s\00", align 1
@gl_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @readconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @readconfig(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = call i32 @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @ENOENT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @adns__debug(i32 %22, i32 -1, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %21, %18
  br label %45

26:                                               ; preds = %14
  %27 = load i32, i32* %4, align 4
  %28 = load i64, i64* @errno, align 8
  %29 = call i32 @saveerr(i32 %27, i64 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* @errno, align 8
  %33 = call i32 @strerror(i64 %32)
  %34 = call i32 @adns__diag(i32 %30, i32 -1, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %31, i32 %33)
  br label %45

35:                                               ; preds = %3
  %36 = load i32, i32* %4, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* @gl_file, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @readconfiggeneric(i32 %36, i8* %37, i32 %38, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @fclose(i32 %43)
  br label %45

45:                                               ; preds = %35, %26, %25
  ret void
}

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i32 @adns__debug(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @saveerr(i32, i64) #1

declare dso_local i32 @adns__diag(i32, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @readconfiggeneric(i32, i8*, i32, i32) #1

declare dso_local i32 @fclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
