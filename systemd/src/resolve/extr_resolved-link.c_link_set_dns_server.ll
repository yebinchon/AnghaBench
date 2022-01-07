; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-link.c_link_set_dns_server.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-link.c_link_set_dns_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32*, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Switching to DNS server %s for interface %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @link_set_dns_server(%struct.TYPE_6__* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = call i32 @assert(%struct.TYPE_6__* %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32*, i32** %5, align 8
  store i32* %14, i32** %3, align 8
  br label %46

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @dns_server_string(i32* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @log_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  br label %25

25:                                               ; preds = %18, %15
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @dns_server_unref(i32* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32* @dns_server_ref(i32* %30)
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = icmp ne %struct.TYPE_5__* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %25
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = call i32 @dns_cache_flush(i32* %42)
  br label %44

44:                                               ; preds = %38, %25
  %45 = load i32*, i32** %5, align 8
  store i32* %45, i32** %3, align 8
  br label %46

46:                                               ; preds = %44, %13
  %47 = load i32*, i32** %3, align 8
  ret i32* %47
}

declare dso_local i32 @assert(%struct.TYPE_6__*) #1

declare dso_local i32 @log_debug(i8*, i32, i32) #1

declare dso_local i32 @dns_server_string(i32*) #1

declare dso_local i32 @dns_server_unref(i32*) #1

declare dso_local i32* @dns_server_ref(i32*) #1

declare dso_local i32 @dns_cache_flush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
