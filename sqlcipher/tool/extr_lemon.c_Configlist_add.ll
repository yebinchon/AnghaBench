; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Configlist_add.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Configlist_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32, %struct.config*, i64, i64, i64, i64, i32, %struct.rule* }
%struct.rule = type { i32 }

@currentend = common dso_local global %struct.config** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.config* @Configlist_add(%struct.rule* %0, i32 %1) #0 {
  %3 = alloca %struct.rule*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.config*, align 8
  %6 = alloca %struct.config, align 8
  store %struct.rule* %0, %struct.rule** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.config**, %struct.config*** @currentend, align 8
  %8 = icmp ne %struct.config** %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.rule*, %struct.rule** %3, align 8
  %12 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 7
  store %struct.rule* %11, %struct.rule** %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = call %struct.config* @Configtable_find(%struct.config* %6)
  store %struct.config* %15, %struct.config** %5, align 8
  %16 = load %struct.config*, %struct.config** %5, align 8
  %17 = icmp eq %struct.config* %16, null
  br i1 %17, label %18, label %45

18:                                               ; preds = %2
  %19 = call %struct.config* (...) @newconfig()
  store %struct.config* %19, %struct.config** %5, align 8
  %20 = load %struct.rule*, %struct.rule** %3, align 8
  %21 = load %struct.config*, %struct.config** %5, align 8
  %22 = getelementptr inbounds %struct.config, %struct.config* %21, i32 0, i32 7
  store %struct.rule* %20, %struct.rule** %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.config*, %struct.config** %5, align 8
  %25 = getelementptr inbounds %struct.config, %struct.config* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = call i32 (...) @SetNew()
  %27 = load %struct.config*, %struct.config** %5, align 8
  %28 = getelementptr inbounds %struct.config, %struct.config* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load %struct.config*, %struct.config** %5, align 8
  %30 = getelementptr inbounds %struct.config, %struct.config* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.config*, %struct.config** %5, align 8
  %32 = getelementptr inbounds %struct.config, %struct.config* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.config*, %struct.config** %5, align 8
  %34 = getelementptr inbounds %struct.config, %struct.config* %33, i32 0, i32 4
  store i64 0, i64* %34, align 8
  %35 = load %struct.config*, %struct.config** %5, align 8
  %36 = getelementptr inbounds %struct.config, %struct.config* %35, i32 0, i32 1
  store %struct.config* null, %struct.config** %36, align 8
  %37 = load %struct.config*, %struct.config** %5, align 8
  %38 = getelementptr inbounds %struct.config, %struct.config* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.config*, %struct.config** %5, align 8
  %40 = load %struct.config**, %struct.config*** @currentend, align 8
  store %struct.config* %39, %struct.config** %40, align 8
  %41 = load %struct.config*, %struct.config** %5, align 8
  %42 = getelementptr inbounds %struct.config, %struct.config* %41, i32 0, i32 1
  store %struct.config** %42, %struct.config*** @currentend, align 8
  %43 = load %struct.config*, %struct.config** %5, align 8
  %44 = call i32 @Configtable_insert(%struct.config* %43)
  br label %45

45:                                               ; preds = %18, %2
  %46 = load %struct.config*, %struct.config** %5, align 8
  ret %struct.config* %46
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.config* @Configtable_find(%struct.config*) #1

declare dso_local %struct.config* @newconfig(...) #1

declare dso_local i32 @SetNew(...) #1

declare dso_local i32 @Configtable_insert(%struct.config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
