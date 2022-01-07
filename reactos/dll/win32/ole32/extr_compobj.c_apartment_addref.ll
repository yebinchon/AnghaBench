; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_apartment_addref.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/ole32/extr_compobj.c_apartment_addref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apartment = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s: before = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.apartment*)* @apartment_addref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @apartment_addref(%struct.apartment* %0) #0 {
  %2 = alloca %struct.apartment*, align 8
  %3 = alloca i64, align 8
  store %struct.apartment* %0, %struct.apartment** %2, align 8
  %4 = load %struct.apartment*, %struct.apartment** %2, align 8
  %5 = getelementptr inbounds %struct.apartment, %struct.apartment* %4, i32 0, i32 1
  %6 = call i64 @InterlockedIncrement(i32* %5)
  store i64 %6, i64* %3, align 8
  %7 = load %struct.apartment*, %struct.apartment** %2, align 8
  %8 = getelementptr inbounds %struct.apartment, %struct.apartment* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @wine_dbgstr_longlong(i32 %9)
  %11 = load i64, i64* %3, align 8
  %12 = sub nsw i64 %11, 1
  %13 = call i32 @TRACE(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %12)
  %14 = load i64, i64* %3, align 8
  ret i64 %14
}

declare dso_local i64 @InterlockedIncrement(i32*) #1

declare dso_local i32 @TRACE(i8*, i32, i64) #1

declare dso_local i32 @wine_dbgstr_longlong(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
