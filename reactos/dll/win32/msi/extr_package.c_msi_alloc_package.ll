; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_msi_alloc_package.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_msi_alloc_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSIHANDLETYPE_PACKAGE = common dso_local global i32 0, align 4
@MSI_FreePackage = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* ()* @msi_alloc_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @msi_alloc_package() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = load i32, i32* @MSIHANDLETYPE_PACKAGE, align 4
  %3 = load i32, i32* @MSI_FreePackage, align 4
  %4 = call %struct.TYPE_4__* @alloc_msiobject(i32 %2, i32 72, i32 %3)
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %1, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %62

7:                                                ; preds = %0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 17
  %10 = call i32 @list_init(i32* %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 16
  %13 = call i32 @list_init(i32* %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 15
  %16 = call i32 @list_init(i32* %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 14
  %19 = call i32 @list_init(i32* %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 13
  %22 = call i32 @list_init(i32* %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 12
  %25 = call i32 @list_init(i32* %24)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 11
  %28 = call i32 @list_init(i32* %27)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 10
  %31 = call i32 @list_init(i32* %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 9
  %34 = call i32 @list_init(i32* %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 8
  %37 = call i32 @list_init(i32* %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 7
  %40 = call i32 @list_init(i32* %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 6
  %43 = call i32 @list_init(i32* %42)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 5
  %46 = call i32 @list_init(i32* %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = call i32 @list_init(i32* %48)
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = call i32 @list_init(i32* %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = call i32 @list_init(i32* %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = call i32 @list_init(i32* %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = call i32 @list_init(i32* %60)
  br label %62

62:                                               ; preds = %7, %0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  ret %struct.TYPE_4__* %63
}

declare dso_local %struct.TYPE_4__* @alloc_msiobject(i32, i32, i32) #1

declare dso_local i32 @list_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
