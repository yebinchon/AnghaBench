; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_locale.c_compare_string3.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_locale.c_compare_string3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCMAP_SORTKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_string3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_string3(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to i8**
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to i8**
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %6, align 8
  %15 = load i32, i32* @LCMAP_SORTKEY, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %18 = call i32 @LCMapStringA(i32 0, i32 %15, i8* %16, i32 -1, i8* %17, i32 256)
  %19 = load i32, i32* @LCMAP_SORTKEY, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %22 = call i32 @LCMapStringA(i32 0, i32 %19, i8* %20, i32 -1, i8* %21, i32 256)
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %25 = call i32 @strcmp(i8* %23, i8* %24)
  ret i32 %25
}

declare dso_local i32 @LCMapStringA(i32, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
