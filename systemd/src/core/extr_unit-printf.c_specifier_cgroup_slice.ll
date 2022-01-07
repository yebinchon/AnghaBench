; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_unit-printf.c_specifier_cgroup_slice.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_unit-printf.c_specifier_cgroup_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i64, i32 }
%struct.TYPE_7__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i8*, i8*, i8**)* @specifier_cgroup_slice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @specifier_cgroup_slice(i8 signext %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store i8 %0, i8* %6, align 1
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %10, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %16 = call i32 @assert(%struct.TYPE_8__* %15)
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %18 = load i8, i8* %6, align 1
  %19 = call i32 @bad_specifier(%struct.TYPE_8__* %17, i8 signext %18)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @UNIT_ISSET(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_8__* @UNIT_DEREF(i32 %28)
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %12, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i8* @strdup(i64 %37)
  store i8* %38, i8** %11, align 8
  br label %42

39:                                               ; preds = %25
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %41 = call i8* @unit_default_cgroup_path(%struct.TYPE_8__* %40)
  store i8* %41, i8** %11, align 8
  br label %42

42:                                               ; preds = %39, %34
  br label %50

43:                                               ; preds = %4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i8* @strdup(i64 %48)
  store i8* %49, i8** %11, align 8
  br label %50

50:                                               ; preds = %43, %42
  %51 = load i8*, i8** %11, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %59

56:                                               ; preds = %50
  %57 = load i8*, i8** %11, align 8
  %58 = load i8**, i8*** %9, align 8
  store i8* %57, i8** %58, align 8
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i32 @bad_specifier(%struct.TYPE_8__*, i8 signext) #1

declare dso_local i64 @UNIT_ISSET(i32) #1

declare dso_local %struct.TYPE_8__* @UNIT_DEREF(i32) #1

declare dso_local i8* @strdup(i64) #1

declare dso_local i8* @unit_default_cgroup_path(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
