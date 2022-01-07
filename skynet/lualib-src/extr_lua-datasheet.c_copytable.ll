; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-datasheet.c_copytable.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-datasheet.c_copytable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proxy = type { i64, i64 }
%struct.document = type { i64 }
%struct.table = type { i32, i32, i32* }

@.str = private unnamed_addr constant [39 x i8] c"Invalid proxy (index = %d, total = %d)\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid proxy (index = %d)\00", align 1
@VALUE_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.proxy*)* @copytable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copytable(i32* %0, i32 %1, %struct.proxy* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.proxy*, align 8
  %7 = alloca %struct.document*, align 8
  %8 = alloca %struct.table*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.proxy* %2, %struct.proxy** %6, align 8
  %11 = load %struct.proxy*, %struct.proxy** %6, align 8
  %12 = getelementptr inbounds %struct.proxy, %struct.proxy* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.document*
  store %struct.document* %14, %struct.document** %7, align 8
  %15 = load %struct.proxy*, %struct.proxy** %6, align 8
  %16 = getelementptr inbounds %struct.proxy, %struct.proxy* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %3
  %20 = load %struct.proxy*, %struct.proxy** %6, align 8
  %21 = getelementptr inbounds %struct.proxy, %struct.proxy* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.document*, %struct.document** %7, align 8
  %24 = getelementptr inbounds %struct.document, %struct.document* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %19, %3
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.proxy*, %struct.proxy** %6, align 8
  %30 = getelementptr inbounds %struct.proxy, %struct.proxy* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.document*, %struct.document** %7, align 8
  %33 = getelementptr inbounds %struct.document, %struct.document* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 (i32*, i8*, i64, ...) @luaL_error(i32* %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %31, i32 %35)
  br label %37

37:                                               ; preds = %27, %19
  %38 = load %struct.document*, %struct.document** %7, align 8
  %39 = load %struct.proxy*, %struct.proxy** %6, align 8
  %40 = getelementptr inbounds %struct.proxy, %struct.proxy* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call %struct.table* @gettable(%struct.document* %38, i64 %41)
  store %struct.table* %42, %struct.table** %8, align 8
  %43 = load %struct.table*, %struct.table** %8, align 8
  %44 = icmp eq %struct.table* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.proxy*, %struct.proxy** %6, align 8
  %48 = getelementptr inbounds %struct.proxy, %struct.proxy* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i32*, i8*, i64, ...) @luaL_error(i32* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  br label %51

51:                                               ; preds = %45, %37
  %52 = load %struct.table*, %struct.table** %8, align 8
  %53 = bitcast %struct.table* %52 to i8*
  %54 = getelementptr inbounds i8, i8* %53, i64 4
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  %56 = load %struct.table*, %struct.table** %8, align 8
  %57 = getelementptr inbounds %struct.table, %struct.table* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.table*, %struct.table** %8, align 8
  %60 = getelementptr inbounds %struct.table, %struct.table* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %58, %61
  %63 = add nsw i32 %62, 3
  %64 = and i32 %63, -4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %55, i64 %65
  %67 = bitcast i8* %66 to i32*
  store i32* %67, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %93, %51
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.table*, %struct.table** %8, align 8
  %71 = getelementptr inbounds %struct.table, %struct.table* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %68
  %75 = load i32*, i32** %4, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %9, align 8
  %78 = ptrtoint i32* %76 to i32
  %79 = load %struct.table*, %struct.table** %8, align 8
  %80 = getelementptr inbounds %struct.table, %struct.table* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.document*, %struct.document** %7, align 8
  %87 = call i32 @pushvalue(i32* %75, i32 %78, i32 %85, %struct.document* %86)
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  %92 = call i32 @lua_rawseti(i32* %88, i32 %89, i32 %91)
  br label %93

93:                                               ; preds = %74
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %68

96:                                               ; preds = %68
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %131, %96
  %98 = load i32, i32* %10, align 4
  %99 = load %struct.table*, %struct.table** %8, align 8
  %100 = getelementptr inbounds %struct.table, %struct.table* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %134

103:                                              ; preds = %97
  %104 = load i32*, i32** %4, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %9, align 8
  %107 = ptrtoint i32* %105 to i32
  %108 = load i32, i32* @VALUE_STRING, align 4
  %109 = load %struct.document*, %struct.document** %7, align 8
  %110 = call i32 @pushvalue(i32* %104, i32 %107, i32 %108, %struct.document* %109)
  %111 = load i32*, i32** %4, align 8
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %9, align 8
  %114 = ptrtoint i32* %112 to i32
  %115 = load %struct.table*, %struct.table** %8, align 8
  %116 = getelementptr inbounds %struct.table, %struct.table* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.table*, %struct.table** %8, align 8
  %119 = getelementptr inbounds %struct.table, %struct.table* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %117, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.document*, %struct.document** %7, align 8
  %127 = call i32 @pushvalue(i32* %111, i32 %114, i32 %125, %struct.document* %126)
  %128 = load i32*, i32** %4, align 8
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @lua_rawset(i32* %128, i32 %129)
  br label %131

131:                                              ; preds = %103
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %97

134:                                              ; preds = %97
  ret void
}

declare dso_local i32 @luaL_error(i32*, i8*, i64, ...) #1

declare dso_local %struct.table* @gettable(%struct.document*, i64) #1

declare dso_local i32 @pushvalue(i32*, i32, i32, %struct.document*) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i32 @lua_rawset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
