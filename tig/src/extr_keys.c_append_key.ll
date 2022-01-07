; ModuleID = '/home/carl/AnghaBench/tig/src/extr_keys.c_append_key.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_keys.c_append_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keybinding = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BUFSIZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*, %struct.keybinding*, i32)* @append_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_key(i8* %0, i64* %1, %struct.keybinding* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.keybinding*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.keybinding* %2, %struct.keybinding** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i64*, i64** %6, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp ugt i64 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)
  store i8* %15, i8** %9, align 8
  %16 = load %struct.keybinding*, %struct.keybinding** %7, align 8
  %17 = getelementptr inbounds %struct.keybinding, %struct.keybinding* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.keybinding*, %struct.keybinding** %7, align 8
  %20 = getelementptr inbounds %struct.keybinding, %struct.keybinding* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @get_key_name(i32 %18, i32 %21, i32 %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @BUFSIZ, align 4
  %26 = load i64*, i64** %6, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @string_nformat(i8* %24, i32 %25, i64* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %27, i8* %28)
  ret i32 %29
}

declare dso_local i8* @get_key_name(i32, i32, i32) #1

declare dso_local i32 @string_nformat(i8*, i32, i64*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
