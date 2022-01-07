; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_wctomb.c_get_defchar_dbcs.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/unicode/extr_wctomb.c_get_defchar_dbcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbcs_table = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.dbcs_table*, i8*)* @get_defchar_dbcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @get_defchar_dbcs(%struct.dbcs_table* %0, i8* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.dbcs_table*, align 8
  %5 = alloca i8*, align 8
  store %struct.dbcs_table* %0, %struct.dbcs_table** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load %struct.dbcs_table*, %struct.dbcs_table** %4, align 8
  %10 = getelementptr inbounds %struct.dbcs_table, %struct.dbcs_table* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %3, align 1
  br label %34

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %3, align 1
  br label %34

22:                                               ; preds = %13
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl i32 %26, 8
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = or i32 %27, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %3, align 1
  br label %34

34:                                               ; preds = %22, %18, %8
  %35 = load i8, i8* %3, align 1
  ret i8 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
