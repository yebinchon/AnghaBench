; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bus-util.c_bus_property_get_rlimit.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bus-util.c_bus_property_get_rlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"Soft\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Limit\00", align 1
@RLIM_INFINITY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"t\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_property_get_rlimit(i32* %0, i8* %1, i8* %2, i8* %3, i32* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.rlimit*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.rlimit, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = ptrtoint i32* %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load i32*, i32** %12, align 8
  %27 = ptrtoint i32* %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i8*, i8** %13, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i8*, i8** %11, align 8
  %33 = call i8* @endswith(i8* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %33, i8** %15, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = bitcast i8* %34 to %struct.rlimit**
  %36 = load %struct.rlimit*, %struct.rlimit** %35, align 8
  store %struct.rlimit* %36, %struct.rlimit** %16, align 8
  %37 = load %struct.rlimit*, %struct.rlimit** %16, align 8
  %38 = icmp ne %struct.rlimit* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %7
  %40 = load i8*, i8** %15, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.rlimit*, %struct.rlimit** %16, align 8
  %44 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  br label %50

46:                                               ; preds = %39
  %47 = load %struct.rlimit*, %struct.rlimit** %16, align 8
  %48 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = phi i64 [ %45, %42 ], [ %49, %46 ]
  store i64 %51, i64* %18, align 8
  br label %91

52:                                               ; preds = %7
  %53 = bitcast %struct.rlimit* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %53, i8 0, i64 16, i1 false)
  %54 = load i8*, i8** %15, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %52
  %57 = load i8*, i8** %11, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  %64 = call i8* @strndupa(i8* %57, i32 %63)
  br label %67

65:                                               ; preds = %52
  %66 = load i8*, i8** %11, align 8
  br label %67

67:                                               ; preds = %65, %56
  %68 = phi i8* [ %64, %56 ], [ %66, %65 ]
  store i8* %68, i8** %20, align 8
  %69 = load i8*, i8** %20, align 8
  %70 = call i8* @strstr(i8* %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i8* %70, i8** %21, align 8
  %71 = call i32 @assert_se(i8* %70)
  %72 = load i8*, i8** %21, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 5
  %74 = call i32 @rlimit_from_string(i8* %73)
  store i32 %74, i32* %22, align 4
  %75 = load i32, i32* %22, align 4
  %76 = icmp sge i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i32, i32* %22, align 4
  %80 = call i32 @getrlimit(i32 %79, %struct.rlimit* %19)
  %81 = load i8*, i8** %15, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %67
  %84 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %19, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  br label %89

86:                                               ; preds = %67
  %87 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %19, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i64 [ %85, %83 ], [ %88, %86 ]
  store i64 %90, i64* %18, align 8
  br label %91

91:                                               ; preds = %89, %50
  %92 = load i64, i64* %18, align 8
  %93 = load i64, i64* @RLIM_INFINITY, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %99

96:                                               ; preds = %91
  %97 = load i64, i64* %18, align 8
  %98 = trunc i64 %97 to i32
  br label %99

99:                                               ; preds = %96, %95
  %100 = phi i32 [ -1, %95 ], [ %98, %96 ]
  store i32 %100, i32* %17, align 4
  %101 = load i32*, i32** %12, align 8
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @sd_bus_message_append(i32* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  ret i32 %103
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @endswith(i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @strndupa(i8*, i32) #1

declare dso_local i32 @assert_se(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @rlimit_from_string(i8*) #1

declare dso_local i32 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @sd_bus_message_append(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
