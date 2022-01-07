; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/tokentest/extr_tokentest.c_DisplayToken.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/tokentest/extr_tokentest.c_DisplayToken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }

@TokenUser = common dso_local global i32 0, align 4
@TokenGroups = common dso_local global i32 0, align 4
@TokenOwner = common dso_local global i32 0, align 4
@TokenPrimaryGroup = common dso_local global i32 0, align 4
@TokenPrivileges = common dso_local global i32 0, align 4
@TokenDefaultDacl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DisplayToken(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @TokenUser, align 4
  %11 = call i32 @GetFromToken(i32 %9, i32 %10)
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %3, align 8
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @TokenGroups, align 4
  %16 = call i32 @GetFromToken(i32 %14, i32 %15)
  %17 = sext i32 %16 to i64
  %18 = inttoptr i64 %17 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %4, align 8
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @TokenOwner, align 4
  %21 = call i32 @GetFromToken(i32 %19, i32 %20)
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %23, %struct.TYPE_18__** %5, align 8
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @TokenPrimaryGroup, align 4
  %26 = call i32 @GetFromToken(i32 %24, i32 %25)
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %6, align 8
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @TokenPrivileges, align 4
  %31 = call i32 @GetFromToken(i32 %29, i32 %30)
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %7, align 8
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @TokenDefaultDacl, align 4
  %36 = call i32 @GetFromToken(i32 %34, i32 %35)
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %38, %struct.TYPE_18__** %8, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %43 = call i32 @DisplayTokenSids(%struct.TYPE_18__* %39, %struct.TYPE_18__* %40, %struct.TYPE_18__* %41, %struct.TYPE_18__* %42)
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DisplayDacl(i32 %46)
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %49 = call i32 @free(%struct.TYPE_18__* %48)
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %51 = call i32 @free(%struct.TYPE_18__* %50)
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %53 = call i32 @free(%struct.TYPE_18__* %52)
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %55 = call i32 @free(%struct.TYPE_18__* %54)
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %57 = call i32 @free(%struct.TYPE_18__* %56)
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %59 = call i32 @free(%struct.TYPE_18__* %58)
  ret void
}

declare dso_local i32 @GetFromToken(i32, i32) #1

declare dso_local i32 @DisplayTokenSids(%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @DisplayDacl(i32) #1

declare dso_local i32 @free(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
