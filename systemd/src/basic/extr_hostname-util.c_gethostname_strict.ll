; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hostname-util.c_gethostname_strict.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hostname-util.c_gethostname_strict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gethostname_strict(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca %struct.utsname, align 4
  %5 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  %6 = call i64 @uname(%struct.utsname* %4)
  %7 = icmp sge i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert_se(i32 %8)
  %10 = getelementptr inbounds %struct.utsname, %struct.utsname* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @isempty(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENXIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %45

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.utsname, %struct.utsname* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @streq(i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %45

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.utsname, %struct.utsname* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @is_localhost(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ENXIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %45

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.utsname, %struct.utsname* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @strdup(i32 %35)
  store i8* %36, i8** %5, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %45

42:                                               ; preds = %33
  %43 = load i8*, i8** %5, align 8
  %44 = load i8**, i8*** %3, align 8
  store i8* %43, i8** %44, align 8
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %39, %30, %22, %14
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @uname(%struct.utsname*) #1

declare dso_local i64 @isempty(i32) #1

declare dso_local i64 @streq(i32, i8*) #1

declare dso_local i64 @is_localhost(i32) #1

declare dso_local i8* @strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
