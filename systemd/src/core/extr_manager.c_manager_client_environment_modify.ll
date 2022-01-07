; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_client_environment_modify.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_client_environment_modify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8** }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @manager_client_environment_modify(%struct.TYPE_4__* %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i8** null, i8*** %8, align 8
  store i8** null, i8*** %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = call i32 @assert(%struct.TYPE_4__* %11)
  %13 = load i8**, i8*** %6, align 8
  %14 = call i64 @strv_isempty(i8** %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i8**, i8*** %7, align 8
  %18 = call i64 @strv_isempty(i8** %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %86

21:                                               ; preds = %16, %3
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8**, i8*** %23, align 8
  store i8** %24, i8*** %10, align 8
  %25 = load i8**, i8*** %6, align 8
  %26 = call i64 @strv_isempty(i8** %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %21
  %29 = load i8**, i8*** %10, align 8
  %30 = load i8**, i8*** %6, align 8
  %31 = call i8** @strv_env_delete(i8** %29, i32 1, i8** %30)
  store i8** %31, i8*** %8, align 8
  %32 = load i8**, i8*** %8, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %86

37:                                               ; preds = %28
  %38 = load i8**, i8*** %8, align 8
  store i8** %38, i8*** %10, align 8
  br label %39

39:                                               ; preds = %37, %21
  %40 = load i8**, i8*** %7, align 8
  %41 = call i64 @strv_isempty(i8** %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %39
  %44 = load i8**, i8*** %10, align 8
  %45 = load i8**, i8*** %7, align 8
  %46 = call i8** @strv_env_merge(i32 2, i8** %44, i8** %45)
  store i8** %46, i8*** %9, align 8
  %47 = load i8**, i8*** %9, align 8
  %48 = icmp ne i8** %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load i8**, i8*** %8, align 8
  %51 = call i32 @strv_free(i8** %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %86

54:                                               ; preds = %43
  %55 = load i8**, i8*** %9, align 8
  store i8** %55, i8*** %10, align 8
  br label %56

56:                                               ; preds = %54, %39
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i8**, i8*** %58, align 8
  %60 = load i8**, i8*** %10, align 8
  %61 = icmp ne i8** %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = call i32 @strv_free(i8** %65)
  br label %67

67:                                               ; preds = %62, %56
  %68 = load i8**, i8*** %8, align 8
  %69 = load i8**, i8*** %10, align 8
  %70 = icmp ne i8** %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i8**, i8*** %8, align 8
  %73 = call i32 @strv_free(i8** %72)
  br label %74

74:                                               ; preds = %71, %67
  %75 = load i8**, i8*** %9, align 8
  %76 = load i8**, i8*** %10, align 8
  %77 = icmp ne i8** %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i8**, i8*** %9, align 8
  %80 = call i32 @strv_free(i8** %79)
  br label %81

81:                                               ; preds = %78, %74
  %82 = load i8**, i8*** %10, align 8
  %83 = call i8** @sanitize_environment(i8** %82)
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store i8** %83, i8*** %85, align 8
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %81, %49, %34, %20
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i64 @strv_isempty(i8**) #1

declare dso_local i8** @strv_env_delete(i8**, i32, i8**) #1

declare dso_local i8** @strv_env_merge(i32, i8**, i8**) #1

declare dso_local i32 @strv_free(i8**) #1

declare dso_local i8** @sanitize_environment(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
