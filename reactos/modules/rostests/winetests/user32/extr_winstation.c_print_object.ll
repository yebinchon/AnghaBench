; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_winstation.c_print_object.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_winstation.c_print_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@UOI_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"could not get info for %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"obj %p name '%s'\0A\00", align 1
@UOI_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"could not get type for %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"obj %p type '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @print_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_object(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [100 x i8], align 16
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %6 = call i32 @strcpy(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @UOI_NAME, align 4
  %9 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %10 = call i32 @GetUserObjectInformationA(i32 %7, i32 %8, i8* %9, i32 100, i32* %4)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  br label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %18 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %16, i8* %17)
  br label %19

19:                                               ; preds = %15, %12
  %20 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %21 = call i32 @strcpy(i8* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @UOI_TYPE, align 4
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %25 = call i32 @GetUserObjectInformationA(i32 %22, i32 %23, i8* %24, i32 100, i32* %4)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %2, align 4
  %29 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %28)
  br label %34

30:                                               ; preds = %19
  %31 = load i32, i32* %2, align 4
  %32 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %33 = call i32 (i8*, i32, ...) @trace(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %31, i8* %32)
  br label %34

34:                                               ; preds = %30, %27
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @GetUserObjectInformationA(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @trace(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
