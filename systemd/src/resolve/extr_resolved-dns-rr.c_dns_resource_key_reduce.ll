; ModuleID = '/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-rr.c_dns_resource_key_reduce.c'
source_filename = "/home/carl/AnghaBench/systemd/src/resolve/extr_resolved-dns-rr.c_dns_resource_key_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dns_resource_key_reduce(%struct.TYPE_10__** %0, %struct.TYPE_10__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__**, align 8
  %5 = alloca %struct.TYPE_10__**, align 8
  store %struct.TYPE_10__** %0, %struct.TYPE_10__*** %4, align 8
  store %struct.TYPE_10__** %1, %struct.TYPE_10__*** %5, align 8
  %6 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %7 = call i32 @assert(%struct.TYPE_10__** %6)
  %8 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %9 = call i32 @assert(%struct.TYPE_10__** %8)
  %10 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %75

14:                                               ; preds = %2
  %15 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %75

19:                                               ; preds = %14
  %20 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %75

26:                                               ; preds = %19
  %27 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %75

33:                                               ; preds = %26
  %34 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = icmp eq %struct.TYPE_10__* %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %75

40:                                               ; preds = %33
  %41 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = call i64 @dns_resource_key_equal(%struct.TYPE_10__* %42, %struct.TYPE_10__* %44)
  %46 = icmp sle i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %75

48:                                               ; preds = %40
  %49 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ugt i32 %52, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = call i32 @dns_resource_key_unref(%struct.TYPE_10__* %60)
  %62 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = call %struct.TYPE_10__* @dns_resource_key_ref(%struct.TYPE_10__* %63)
  %65 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  store %struct.TYPE_10__* %64, %struct.TYPE_10__** %65, align 8
  br label %74

66:                                               ; preds = %48
  %67 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = call i32 @dns_resource_key_unref(%struct.TYPE_10__* %68)
  %70 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %5, align 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = call %struct.TYPE_10__* @dns_resource_key_ref(%struct.TYPE_10__* %71)
  %73 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %4, align 8
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %73, align 8
  br label %74

74:                                               ; preds = %66, %58
  store i32 1, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %47, %39, %32, %25, %18, %13
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @assert(%struct.TYPE_10__**) #1

declare dso_local i64 @dns_resource_key_equal(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @dns_resource_key_unref(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @dns_resource_key_ref(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
