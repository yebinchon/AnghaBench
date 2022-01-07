; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_spool.c_SpoolName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_spool.c_SpoolName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"19700101-000000\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%Y%m%d-%H%M%S\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"/%c-%010u-%04x-%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SpoolName(i8* %0, i8* %1, i64 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca [64 x i8], align 16
  %14 = alloca [32 x i8], align 16
  %15 = alloca %struct.tm*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %16 = load i64, i64* %12, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i64, i64* %12, align 8
  %20 = icmp eq i64 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %6
  %22 = call i32 @time(i64* %12)
  br label %23

23:                                               ; preds = %21, %18
  %24 = call %struct.tm* @localtime(i64* %12)
  store %struct.tm* %24, %struct.tm** %15, align 8
  %25 = load %struct.tm*, %struct.tm** %15, align 8
  %26 = icmp eq %struct.tm* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @Strncpy(i8* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %29)
  br label %35

31:                                               ; preds = %23
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %33 = load %struct.tm*, %struct.tm** %15, align 8
  %34 = call i32 @strftime(i8* %32, i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.tm* %33)
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @Strncpy(i8* %36, i8* %37, i64 %38)
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %41 = load i32, i32* %10, align 4
  %42 = call i64 (...) @getpid()
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* %11, align 4
  %45 = srem i32 %44, 65536
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %47 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %43, i32 %45, i8* %46)
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @Strncat(i8* %48, i8* %49, i64 %50)
  ret void
}

declare dso_local i32 @time(i64*) #1

declare dso_local %struct.tm* @localtime(i64*) #1

declare dso_local i32 @Strncpy(i8*, i8*, i64) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i8*) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @Strncat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
