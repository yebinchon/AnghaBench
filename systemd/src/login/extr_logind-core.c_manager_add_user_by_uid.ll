; ModuleID = '/home/carl/AnghaBench/systemd/src/login/extr_logind-core.c_manager_add_user_by_uid.c'
source_filename = "/home/carl/AnghaBench/systemd/src/login/extr_logind-core.c_manager_add_user_by_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32, i32, i32 }

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @manager_add_user_by_uid(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca %struct.passwd*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = call i32 @assert(i32* %9)
  store i64 0, i64* @errno, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.passwd* @getpwuid(i32 %11)
  store %struct.passwd* %12, %struct.passwd** %8, align 8
  %13 = load %struct.passwd*, %struct.passwd** %8, align 8
  %14 = icmp ne %struct.passwd* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOENT, align 4
  %17 = call i32 @errno_or_else(i32 %16)
  store i32 %17, i32* %4, align 4
  br label %32

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.passwd*, %struct.passwd** %8, align 8
  %22 = getelementptr inbounds %struct.passwd, %struct.passwd* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.passwd*, %struct.passwd** %8, align 8
  %25 = getelementptr inbounds %struct.passwd, %struct.passwd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.passwd*, %struct.passwd** %8, align 8
  %28 = getelementptr inbounds %struct.passwd, %struct.passwd* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32**, i32*** %7, align 8
  %31 = call i32 @manager_add_user(i32* %19, i32 %20, i32 %23, i32 %26, i32 %29, i32** %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %18, %15
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @assert(i32*) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @errno_or_else(i32) #1

declare dso_local i32 @manager_add_user(i32*, i32, i32, i32, i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
