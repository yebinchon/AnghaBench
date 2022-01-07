; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_dispatch_tristate.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_json.c_json_dispatch_tristate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"JSON field '%s' is not a boolean.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_dispatch_tristate(i8* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i8*, i8** %9, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %10, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @assert(i32* %13)
  %15 = load i32*, i32** %10, align 8
  %16 = call i32 @assert(i32* %15)
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @json_variant_is_boolean(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = call i32 @SYNTHETIC_ERRNO(i32 %23)
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @strna(i8* %25)
  %27 = call i32 @json_log(i32* %21, i32 %22, i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 %27, i32* %5, align 4
  br label %32

28:                                               ; preds = %4
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @json_variant_boolean(i32* %29)
  %31 = load i32*, i32** %10, align 8
  store i32 %30, i32* %31, align 4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %20
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @json_variant_is_boolean(i32*) #1

declare dso_local i32 @json_log(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @SYNTHETIC_ERRNO(i32) #1

declare dso_local i32 @strna(i8*) #1

declare dso_local i32 @json_variant_boolean(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
