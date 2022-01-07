; ModuleID = '/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-mount.c_mount_custom.c'
source_filename = "/home/carl/AnghaBench/systemd/src/nspawn/extr_nspawn-mount.c_mount_custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"Unknown custom mount type\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mount_custom(i8* %0, %struct.TYPE_8__* %1, i64 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %10, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @assert(i8* %21)
  store i64 0, i64* %18, align 8
  br label %23

23:                                               ; preds = %73, %8
  %24 = load i64, i64* %18, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %76

27:                                               ; preds = %23
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %29 = load i64, i64* %18, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i64 %29
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %20, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %17, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %73

37:                                               ; preds = %27
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %65 [
    i32 131, label %41
    i32 128, label %45
    i32 129, label %53
    i32 130, label %57
    i32 132, label %61
  ]

41:                                               ; preds = %37
  %42 = load i8*, i8** %10, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %44 = call i32 @mount_bind(i8* %42, %struct.TYPE_8__* %43)
  store i32 %44, i32* %19, align 4
  br label %67

45:                                               ; preds = %37
  %46 = load i8*, i8** %10, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i8*, i8** %16, align 8
  %52 = call i32 @mount_tmpfs(i8* %46, %struct.TYPE_8__* %47, i32 %48, i32 %49, i32 %50, i8* %51)
  store i32 %52, i32* %19, align 4
  br label %67

53:                                               ; preds = %37
  %54 = load i8*, i8** %10, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %56 = call i32 @mount_overlay(i8* %54, %struct.TYPE_8__* %55)
  store i32 %56, i32* %19, align 4
  br label %67

57:                                               ; preds = %37
  %58 = load i8*, i8** %10, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %60 = call i32 @mount_inaccessible(i8* %58, %struct.TYPE_8__* %59)
  store i32 %60, i32* %19, align 4
  br label %67

61:                                               ; preds = %37
  %62 = load i8*, i8** %10, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %64 = call i32 @mount_arbitrary(i8* %62, %struct.TYPE_8__* %63)
  store i32 %64, i32* %19, align 4
  br label %67

65:                                               ; preds = %37
  %66 = call i32 @assert_not_reached(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %61, %57, %53, %45, %41
  %68 = load i32, i32* %19, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %19, align 4
  store i32 %71, i32* %9, align 4
  br label %77

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %36
  %74 = load i64, i64* %18, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %18, align 8
  br label %23

76:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %77

77:                                               ; preds = %76, %70
  %78 = load i32, i32* %9, align 4
  ret i32 %78
}

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @mount_bind(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @mount_tmpfs(i8*, %struct.TYPE_8__*, i32, i32, i32, i8*) #1

declare dso_local i32 @mount_overlay(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @mount_inaccessible(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @mount_arbitrary(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @assert_not_reached(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
