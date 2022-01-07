; ModuleID = '/home/carl/AnghaBench/tig/src/extr_refs.c_refs_select.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_refs.c_refs_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.line = type { %struct.reference* }
%struct.reference = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@REFS_ALL_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.view*, %struct.line*)* @refs_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refs_select(%struct.view* %0, %struct.line* %1) #0 {
  %3 = alloca %struct.view*, align 8
  %4 = alloca %struct.line*, align 8
  %5 = alloca %struct.reference*, align 8
  store %struct.view* %0, %struct.view** %3, align 8
  store %struct.line* %1, %struct.line** %4, align 8
  %6 = load %struct.line*, %struct.line** %4, align 8
  %7 = getelementptr inbounds %struct.line, %struct.line* %6, i32 0, i32 0
  %8 = load %struct.reference*, %struct.reference** %7, align 8
  store %struct.reference* %8, %struct.reference** %5, align 8
  %9 = load %struct.reference*, %struct.reference** %5, align 8
  %10 = call i64 @refs_is_all(%struct.reference* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.view*, %struct.view** %3, align 8
  %14 = getelementptr inbounds %struct.view, %struct.view* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @REFS_ALL_NAME, align 4
  %17 = call i32 @string_copy(i32 %15, i32 %16)
  br label %63

18:                                               ; preds = %2
  %19 = load %struct.view*, %struct.view** %3, align 8
  %20 = getelementptr inbounds %struct.view, %struct.view* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.reference*, %struct.reference** %5, align 8
  %23 = getelementptr inbounds %struct.reference, %struct.reference* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @string_copy_rev(i32 %21, i32 %26)
  %28 = load %struct.view*, %struct.view** %3, align 8
  %29 = getelementptr inbounds %struct.view, %struct.view* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.reference*, %struct.reference** %5, align 8
  %34 = getelementptr inbounds %struct.reference, %struct.reference* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @string_copy_rev(i32 %32, i32 %37)
  %39 = load %struct.view*, %struct.view** %3, align 8
  %40 = getelementptr inbounds %struct.view, %struct.view* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.reference*, %struct.reference** %5, align 8
  %45 = getelementptr inbounds %struct.reference, %struct.reference* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.reference*, %struct.reference** %5, align 8
  %50 = getelementptr inbounds %struct.reference, %struct.reference* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @strlen(i32 %53)
  %55 = call i32 @string_ncopy(i32 %43, i32 %48, i32 %54)
  %56 = load %struct.view*, %struct.view** %3, align 8
  %57 = getelementptr inbounds %struct.view, %struct.view* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load %struct.reference*, %struct.reference** %5, align 8
  %60 = getelementptr inbounds %struct.reference, %struct.reference* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = call i32 @ref_update_env(%struct.TYPE_3__* %58, %struct.TYPE_4__* %61, i32 0)
  br label %63

63:                                               ; preds = %18, %12
  ret void
}

declare dso_local i64 @refs_is_all(%struct.reference*) #1

declare dso_local i32 @string_copy(i32, i32) #1

declare dso_local i32 @string_copy_rev(i32, i32) #1

declare dso_local i32 @string_ncopy(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @ref_update_env(%struct.TYPE_3__*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
