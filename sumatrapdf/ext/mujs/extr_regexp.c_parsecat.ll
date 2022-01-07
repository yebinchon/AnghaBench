; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_regexp.c_parsecat.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_regexp.c_parsecat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.cstate = type { i8 }

@P_CAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (%struct.cstate*)* @parsecat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @parsecat(%struct.cstate* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.cstate*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_4__**, align 8
  store %struct.cstate* %0, %struct.cstate** %3, align 8
  %7 = load %struct.cstate*, %struct.cstate** %3, align 8
  %8 = getelementptr inbounds %struct.cstate, %struct.cstate* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %67

12:                                               ; preds = %1
  %13 = load %struct.cstate*, %struct.cstate** %3, align 8
  %14 = getelementptr inbounds %struct.cstate, %struct.cstate* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 124
  br i1 %17, label %18, label %67

18:                                               ; preds = %12
  %19 = load %struct.cstate*, %struct.cstate** %3, align 8
  %20 = getelementptr inbounds %struct.cstate, %struct.cstate* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 41
  br i1 %23, label %24, label %67

24:                                               ; preds = %18
  %25 = load %struct.cstate*, %struct.cstate** %3, align 8
  %26 = call i8* @parserep(%struct.cstate* %25)
  %27 = bitcast i8* %26 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__** %5, %struct.TYPE_4__*** %6, align 8
  br label %28

28:                                               ; preds = %48, %24
  %29 = load %struct.cstate*, %struct.cstate** %3, align 8
  %30 = getelementptr inbounds %struct.cstate, %struct.cstate* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.cstate*, %struct.cstate** %3, align 8
  %36 = getelementptr inbounds %struct.cstate, %struct.cstate* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 124
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.cstate*, %struct.cstate** %3, align 8
  %42 = getelementptr inbounds %struct.cstate, %struct.cstate* %41, i32 0, i32 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 41
  br label %46

46:                                               ; preds = %40, %34, %28
  %47 = phi i1 [ false, %34 ], [ false, %28 ], [ %45, %40 ]
  br i1 %47, label %48, label %65

48:                                               ; preds = %46
  %49 = load %struct.cstate*, %struct.cstate** %3, align 8
  %50 = load i32, i32* @P_CAT, align 4
  %51 = call %struct.TYPE_4__* @newnode(%struct.cstate* %49, i32 %50)
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %4, align 8
  %52 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %55, align 8
  %56 = load %struct.cstate*, %struct.cstate** %3, align 8
  %57 = call i8* @parserep(%struct.cstate* %56)
  %58 = bitcast i8* %57 to %struct.TYPE_4__*
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %60, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store %struct.TYPE_4__** %64, %struct.TYPE_4__*** %6, align 8
  br label %28

65:                                               ; preds = %46
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %2, align 8
  br label %68

67:                                               ; preds = %18, %12, %1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %68

68:                                               ; preds = %67, %65
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %69
}

declare dso_local i8* @parserep(%struct.cstate*) #1

declare dso_local %struct.TYPE_4__* @newnode(%struct.cstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
