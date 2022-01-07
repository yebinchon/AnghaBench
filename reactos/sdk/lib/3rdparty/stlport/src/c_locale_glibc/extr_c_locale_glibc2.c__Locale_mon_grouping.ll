; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_glibc/extr_c_locale_glibc2.c__Locale_mon_grouping.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/stlport/src/c_locale_glibc/extr_c_locale_glibc2.c__Locale_mon_grouping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Locale_monetary = type { i32 }

@MON_GROUPING = common dso_local global i32 0, align 4
@_empty_str = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_Locale_mon_grouping(%struct._Locale_monetary* %0) #0 {
  %2 = alloca %struct._Locale_monetary*, align 8
  store %struct._Locale_monetary* %0, %struct._Locale_monetary** %2, align 8
  %3 = load %struct._Locale_monetary*, %struct._Locale_monetary** %2, align 8
  %4 = call i64 @_Locale_mon_thousands_sep(%struct._Locale_monetary* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* @MON_GROUPING, align 4
  %8 = load %struct._Locale_monetary*, %struct._Locale_monetary** %2, align 8
  %9 = ptrtoint %struct._Locale_monetary* %8 to i32
  %10 = call i8* @nl_langinfo_l(i32 %7, i32 %9)
  br label %13

11:                                               ; preds = %1
  %12 = load i8*, i8** @_empty_str, align 8
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi i8* [ %10, %6 ], [ %12, %11 ]
  ret i8* %14
}

declare dso_local i64 @_Locale_mon_thousands_sep(%struct._Locale_monetary*) #1

declare dso_local i8* @nl_langinfo_l(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
