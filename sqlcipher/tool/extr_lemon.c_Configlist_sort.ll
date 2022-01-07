; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Configlist_sort.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Configlist_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32 }

@current = common dso_local global %struct.config* null, align 8
@Configcmp = common dso_local global i32 0, align 4
@currentend = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Configlist_sort() #0 {
  %1 = load %struct.config*, %struct.config** @current, align 8
  %2 = bitcast %struct.config* %1 to i8*
  %3 = load %struct.config*, %struct.config** @current, align 8
  %4 = getelementptr inbounds %struct.config, %struct.config* %3, i32 0, i32 0
  %5 = bitcast i32* %4 to i8**
  %6 = load i32, i32* @Configcmp, align 4
  %7 = call i64 @msort(i8* %2, i8** %5, i32 %6)
  %8 = inttoptr i64 %7 to %struct.config*
  store %struct.config* %8, %struct.config** @current, align 8
  store i64 0, i64* @currentend, align 8
  ret void
}

declare dso_local i64 @msort(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
