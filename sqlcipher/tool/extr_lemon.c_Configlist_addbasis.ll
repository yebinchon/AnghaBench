; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Configlist_addbasis.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_lemon.c_Configlist_addbasis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config = type { i32, %struct.config*, %struct.config*, i64, i64, i64, i32, %struct.rule* }
%struct.rule = type { i32 }

@basisend = common dso_local global %struct.config** null, align 8
@currentend = common dso_local global %struct.config** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.config* @Configlist_addbasis(%struct.rule* %0, i32 %1) #0 {
  %3 = alloca %struct.rule*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.config*, align 8
  %6 = alloca %struct.config, align 8
  store %struct.rule* %0, %struct.rule** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.config**, %struct.config*** @basisend, align 8
  %8 = icmp ne %struct.config** %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.config**, %struct.config*** @currentend, align 8
  %12 = icmp ne %struct.config** %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.rule*, %struct.rule** %3, align 8
  %16 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 7
  store %struct.rule* %15, %struct.rule** %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = call %struct.config* @Configtable_find(%struct.config* %6)
  store %struct.config* %19, %struct.config** %5, align 8
  %20 = load %struct.config*, %struct.config** %5, align 8
  %21 = icmp eq %struct.config* %20, null
  br i1 %21, label %22, label %53

22:                                               ; preds = %2
  %23 = call %struct.config* (...) @newconfig()
  store %struct.config* %23, %struct.config** %5, align 8
  %24 = load %struct.rule*, %struct.rule** %3, align 8
  %25 = load %struct.config*, %struct.config** %5, align 8
  %26 = getelementptr inbounds %struct.config, %struct.config* %25, i32 0, i32 7
  store %struct.rule* %24, %struct.rule** %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.config*, %struct.config** %5, align 8
  %29 = getelementptr inbounds %struct.config, %struct.config* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = call i32 (...) @SetNew()
  %31 = load %struct.config*, %struct.config** %5, align 8
  %32 = getelementptr inbounds %struct.config, %struct.config* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load %struct.config*, %struct.config** %5, align 8
  %34 = getelementptr inbounds %struct.config, %struct.config* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load %struct.config*, %struct.config** %5, align 8
  %36 = getelementptr inbounds %struct.config, %struct.config* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.config*, %struct.config** %5, align 8
  %38 = getelementptr inbounds %struct.config, %struct.config* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.config*, %struct.config** %5, align 8
  %40 = getelementptr inbounds %struct.config, %struct.config* %39, i32 0, i32 2
  store %struct.config* null, %struct.config** %40, align 8
  %41 = load %struct.config*, %struct.config** %5, align 8
  %42 = getelementptr inbounds %struct.config, %struct.config* %41, i32 0, i32 1
  store %struct.config* null, %struct.config** %42, align 8
  %43 = load %struct.config*, %struct.config** %5, align 8
  %44 = load %struct.config**, %struct.config*** @currentend, align 8
  store %struct.config* %43, %struct.config** %44, align 8
  %45 = load %struct.config*, %struct.config** %5, align 8
  %46 = getelementptr inbounds %struct.config, %struct.config* %45, i32 0, i32 2
  store %struct.config** %46, %struct.config*** @currentend, align 8
  %47 = load %struct.config*, %struct.config** %5, align 8
  %48 = load %struct.config**, %struct.config*** @basisend, align 8
  store %struct.config* %47, %struct.config** %48, align 8
  %49 = load %struct.config*, %struct.config** %5, align 8
  %50 = getelementptr inbounds %struct.config, %struct.config* %49, i32 0, i32 1
  store %struct.config** %50, %struct.config*** @basisend, align 8
  %51 = load %struct.config*, %struct.config** %5, align 8
  %52 = call i32 @Configtable_insert(%struct.config* %51)
  br label %53

53:                                               ; preds = %22, %2
  %54 = load %struct.config*, %struct.config** %5, align 8
  ret %struct.config* %54
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
