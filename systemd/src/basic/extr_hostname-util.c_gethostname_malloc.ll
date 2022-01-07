; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hostname-util.c_gethostname_malloc.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hostname-util.c_gethostname_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@FALLBACK_HOSTNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gethostname_malloc() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.utsname, align 4
  %3 = call i64 @uname(%struct.utsname* %2)
  %4 = icmp sge i64 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert_se(i32 %5)
  %7 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @isempty(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @streq(i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11, %0
  %17 = load i32, i32* @FALLBACK_HOSTNAME, align 4
  %18 = call i8* @strdup(i32 %17)
  store i8* %18, i8** %1, align 8
  br label %23

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @strdup(i32 %21)
  store i8* %22, i8** %1, align 8
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i8*, i8** %1, align 8
  ret i8* %24
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @uname(%struct.utsname*) #1

declare dso_local i64 @isempty(i32) #1

declare dso_local i64 @streq(i32, i8*) #1

declare dso_local i8* @strdup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
