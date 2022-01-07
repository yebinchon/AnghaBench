; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udev-rules.c_token_match_attr.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udev-rules.c_token_match_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i64 }

@UTIL_NAME_SIZE = common dso_local global i32 0, align 4
@_fallthrough_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Invalid attribute substitution type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*)* @token_match_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @token_match_attr(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %14 = load i32, i32* @UTIL_NAME_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @UTIL_NAME_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = call i32 @assert(%struct.TYPE_11__* %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = call i32 @assert(%struct.TYPE_11__* %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %26 = call i32 @assert(%struct.TYPE_11__* %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %11, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %54 [
    i32 130, label %34
    i32 129, label %40
    i32 128, label %47
  ]

34:                                               ; preds = %3
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = trunc i64 %15 to i32
  %38 = call i32 @udev_event_apply_format(%struct.TYPE_11__* %35, i8* %36, i8* %17, i32 %37, i32 0)
  store i8* %17, i8** %11, align 8
  %39 = load i32, i32* @_fallthrough_, align 4
  br label %40

40:                                               ; preds = %3, %34
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = call i32 @sd_device_get_sysattr_value(%struct.TYPE_11__* %41, i8* %42, i8** %12)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %74

46:                                               ; preds = %40
  br label %56

47:                                               ; preds = %3
  %48 = load i8*, i8** %11, align 8
  %49 = trunc i64 %19 to i32
  %50 = call i32 @util_resolve_subsys_kernel(i8* %48, i8* %20, i32 %49, i32 1)
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %74

53:                                               ; preds = %47
  store i8* %20, i8** %12, align 8
  br label %56

54:                                               ; preds = %3
  %55 = call i32 @assert_not_reached(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %53, %46
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load i8*, i8** %12, align 8
  %63 = icmp ne i8* %62, %20
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = trunc i64 %19 to i32
  %66 = load i8*, i8** %12, align 8
  %67 = call i32 @strscpy(i8* %20, i32 %65, i8* %66)
  store i8* %20, i8** %12, align 8
  br label %68

68:                                               ; preds = %64, %61
  %69 = call i32 @delete_trailing_chars(i8* %20, i32* null)
  br label %70

70:                                               ; preds = %68, %56
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @token_match_string(%struct.TYPE_11__* %71, i8* %72)
  store i32 %73, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %74

74:                                               ; preds = %70, %52, %45
  %75 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(%struct.TYPE_11__*) #2

declare dso_local i32 @udev_event_apply_format(%struct.TYPE_11__*, i8*, i8*, i32, i32) #2

declare dso_local i32 @sd_device_get_sysattr_value(%struct.TYPE_11__*, i8*, i8**) #2

declare dso_local i32 @util_resolve_subsys_kernel(i8*, i8*, i32, i32) #2

declare dso_local i32 @assert_not_reached(i8*) #2

declare dso_local i32 @strscpy(i8*, i32, i8*) #2

declare dso_local i32 @delete_trailing_chars(i8*, i32*) #2

declare dso_local i32 @token_match_string(%struct.TYPE_11__*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
