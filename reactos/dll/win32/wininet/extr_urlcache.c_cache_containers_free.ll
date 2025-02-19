; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_cache_containers_free.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_urlcache.c_cache_containers_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UrlContainers = common dso_local global i32 0, align 4
@cache_container = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cache_containers_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_containers_free() #0 {
  br label %1

1:                                                ; preds = %5, %0
  %2 = call i32 @list_empty(i32* @UrlContainers)
  %3 = icmp ne i32 %2, 0
  %4 = xor i1 %3, true
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = call i32 @list_head(i32* @UrlContainers)
  %7 = load i32, i32* @cache_container, align 4
  %8 = load i32, i32* @entry, align 4
  %9 = call i32 @LIST_ENTRY(i32 %6, i32 %7, i32 %8)
  %10 = call i32 @cache_container_delete_container(i32 %9)
  br label %1

11:                                               ; preds = %1
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @cache_container_delete_container(i32) #1

declare dso_local i32 @LIST_ENTRY(i32, i32, i32) #1

declare dso_local i32 @list_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
