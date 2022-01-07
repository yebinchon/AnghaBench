; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_lookup_key.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_lookup_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i64, i32, i32, i64, i64 }
%struct.table = type { i64, %struct.node*, i32 }

@KEYTYPE_INTEGER = common dso_local global i32 0, align 4
@KEYTYPE_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.node* (%struct.table*, i64, i32, i32, i8*, i64)* @lookup_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.node* @lookup_key(%struct.table* %0, i64 %1, i32 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.table*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.node*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store %struct.table* %0, %struct.table** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.table*, %struct.table** %8, align 8
  %18 = getelementptr inbounds %struct.table, %struct.table* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store %struct.node* null, %struct.node** %7, align 8
  br label %109

22:                                               ; preds = %6
  %23 = load %struct.table*, %struct.table** %8, align 8
  %24 = getelementptr inbounds %struct.table, %struct.table* %23, i32 0, i32 1
  %25 = load %struct.node*, %struct.node** %24, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.table*, %struct.table** %8, align 8
  %28 = getelementptr inbounds %struct.table, %struct.table* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = urem i64 %26, %29
  %31 = getelementptr inbounds %struct.node, %struct.node* %25, i64 %30
  store %struct.node* %31, %struct.node** %14, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.node*, %struct.node** %14, align 8
  %34 = getelementptr inbounds %struct.node, %struct.node* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %22
  %38 = load %struct.node*, %struct.node** %14, align 8
  %39 = getelementptr inbounds %struct.node, %struct.node* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store %struct.node* null, %struct.node** %7, align 8
  br label %109

43:                                               ; preds = %37, %22
  br label %44

44:                                               ; preds = %101, %43
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.node*, %struct.node** %14, align 8
  %47 = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %95

50:                                               ; preds = %44
  %51 = load %struct.node*, %struct.node** %14, align 8
  %52 = getelementptr inbounds %struct.node, %struct.node* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @KEYTYPE_INTEGER, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %50
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @KEYTYPE_INTEGER, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load %struct.node*, %struct.node** %14, align 8
  %62 = getelementptr inbounds %struct.node, %struct.node* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load %struct.node*, %struct.node** %14, align 8
  store %struct.node* %67, %struct.node** %7, align 8
  br label %109

68:                                               ; preds = %60, %56
  br label %94

69:                                               ; preds = %50
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @KEYTYPE_STRING, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %69
  store i64 0, i64* %15, align 8
  %74 = load %struct.table*, %struct.table** %8, align 8
  %75 = getelementptr inbounds %struct.table, %struct.table* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.node*, %struct.node** %14, align 8
  %78 = getelementptr inbounds %struct.node, %struct.node* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @lua_tolstring(i32 %76, i32 %79, i64* %15)
  store i8* %80, i8** %16, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %15, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %73
  %85 = load i8*, i8** %12, align 8
  %86 = load i8*, i8** %16, align 8
  %87 = load i64, i64* %13, align 8
  %88 = call i64 @memcmp(i8* %85, i8* %86, i64 %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load %struct.node*, %struct.node** %14, align 8
  store %struct.node* %91, %struct.node** %7, align 8
  br label %109

92:                                               ; preds = %84, %73
  br label %93

93:                                               ; preds = %92, %69
  br label %94

94:                                               ; preds = %93, %68
  br label %95

95:                                               ; preds = %94, %44
  %96 = load %struct.node*, %struct.node** %14, align 8
  %97 = getelementptr inbounds %struct.node, %struct.node* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ult i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store %struct.node* null, %struct.node** %7, align 8
  br label %109

101:                                              ; preds = %95
  %102 = load %struct.table*, %struct.table** %8, align 8
  %103 = getelementptr inbounds %struct.table, %struct.table* %102, i32 0, i32 1
  %104 = load %struct.node*, %struct.node** %103, align 8
  %105 = load %struct.node*, %struct.node** %14, align 8
  %106 = getelementptr inbounds %struct.node, %struct.node* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.node, %struct.node* %104, i64 %107
  store %struct.node* %108, %struct.node** %14, align 8
  br label %44

109:                                              ; preds = %100, %90, %66, %42, %21
  %110 = load %struct.node*, %struct.node** %7, align 8
  ret %struct.node* %110
}

declare dso_local i8* @lua_tolstring(i32, i32, i64*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
