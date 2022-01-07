; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_mru.c_create_reg_entries.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_mru.c_create_reg_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HKEY_CURRENT_USER = common dso_local global i32 0, align 4
@REG_TEST_FULLKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Couldn't create test key \22%s\22\0A\00", align 1
@REG_TEST_KEYA = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_reg_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_reg_entries() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  %3 = load i32, i32* @HKEY_CURRENT_USER, align 4
  %4 = load i32, i32* @REG_TEST_FULLKEY, align 4
  %5 = call i32 @RegCreateKeyA(i32 %3, i32 %4, i32** %2)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* @REG_TEST_KEYA, align 4
  %10 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %0
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %1, align 4
  br label %19

15:                                               ; preds = %0
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @RegCloseKey(i32* %16)
  %18 = load i32, i32* @TRUE, align 4
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %15, %13
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i32 @RegCreateKeyA(i32, i32, i32**) #1

declare dso_local i32 @RegCloseKey(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
