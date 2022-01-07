; ModuleID = '/home/carl/AnghaBench/seafile/common/index/extr_index.c_refresh_cache_entry.c'
source_filename = "/home/carl/AnghaBench/seafile/common/index/extr_index.c_refresh_cache_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_entry = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Failed to stat %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cache_entry* (%struct.cache_entry*, i8*)* @refresh_cache_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cache_entry* @refresh_cache_entry(%struct.cache_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.cache_entry*, align 8
  %4 = alloca %struct.cache_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.cache_entry* %0, %struct.cache_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @seaf_stat(i8* %7, i32* %6)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @seaf_warning(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %11)
  store %struct.cache_entry* null, %struct.cache_entry** %3, align 8
  br label %17

13:                                               ; preds = %2
  %14 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  %15 = call i32 @fill_stat_cache_info(%struct.cache_entry* %14, i32* %6)
  %16 = load %struct.cache_entry*, %struct.cache_entry** %4, align 8
  store %struct.cache_entry* %16, %struct.cache_entry** %3, align 8
  br label %17

17:                                               ; preds = %13, %10
  %18 = load %struct.cache_entry*, %struct.cache_entry** %3, align 8
  ret %struct.cache_entry* %18
}

declare dso_local i64 @seaf_stat(i8*, i32*) #1

declare dso_local i32 @seaf_warning(i8*, i8*) #1

declare dso_local i32 @fill_stat_cache_info(%struct.cache_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
