; ModuleID = '/home/carl/AnghaBench/tig/src/extr_map.c_string_map_remove.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_map.c_string_map_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_map = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @string_map_remove(%struct.string_map* %0, i8* %1) #0 {
  %3 = alloca %struct.string_map*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  store %struct.string_map* %0, %struct.string_map** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %7 = load %struct.string_map*, %struct.string_map** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i8** @string_map_get_at(%struct.string_map* %7, i8* %8)
  store i8** %9, i8*** %6, align 8
  %10 = load i8**, i8*** %6, align 8
  %11 = icmp ne i8** %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %5, align 8
  %15 = load %struct.string_map*, %struct.string_map** %3, align 8
  %16 = getelementptr inbounds %struct.string_map, %struct.string_map* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8**, i8*** %6, align 8
  %19 = call i32 @htab_clear_slot(i32 %17, i8** %18)
  br label %20

20:                                               ; preds = %12, %2
  %21 = load i8*, i8** %5, align 8
  ret i8* %21
}

declare dso_local i8** @string_map_get_at(%struct.string_map*, i8*) #1

declare dso_local i32 @htab_clear_slot(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
