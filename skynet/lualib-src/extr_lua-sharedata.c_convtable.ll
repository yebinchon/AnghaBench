; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_convtable.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_convtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32, %struct.table* }
%struct.table = type { i32, i32, %struct.node*, %union.value*, i8**, i32 }
%struct.node = type { i64, i8* }
%union.value = type { i32 }

@VALUETYPE_NIL = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"memory error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @convtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convtable(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.context*, align 8
  %6 = alloca %struct.table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.context* @lua_touserdata(i32* %10, i32 2)
  store %struct.context* %11, %struct.context** %5, align 8
  %12 = load %struct.context*, %struct.context** %5, align 8
  %13 = getelementptr inbounds %struct.context, %struct.context* %12, i32 0, i32 1
  %14 = load %struct.table*, %struct.table** %13, align 8
  store %struct.table* %14, %struct.table** %6, align 8
  %15 = load %struct.context*, %struct.context** %5, align 8
  %16 = getelementptr inbounds %struct.context, %struct.context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.table*, %struct.table** %6, align 8
  %19 = getelementptr inbounds %struct.table, %struct.table* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_rawlen(i32* %20, i32 1)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = trunc i64 %27 to i32
  %29 = call i64 @malloc(i32 %28)
  %30 = inttoptr i64 %29 to i8**
  %31 = load %struct.table*, %struct.table** %6, align 8
  %32 = getelementptr inbounds %struct.table, %struct.table* %31, i32 0, i32 4
  store i8** %30, i8*** %32, align 8
  %33 = load %struct.table*, %struct.table** %6, align 8
  %34 = getelementptr inbounds %struct.table, %struct.table* %33, i32 0, i32 4
  %35 = load i8**, i8*** %34, align 8
  %36 = icmp eq i8** %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %146

38:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %51, %38
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load i8*, i8** @VALUETYPE_NIL, align 8
  %45 = load %struct.table*, %struct.table** %6, align 8
  %46 = getelementptr inbounds %struct.table, %struct.table* %45, i32 0, i32 4
  %47 = load i8**, i8*** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  store i8* %44, i8** %50, align 8
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %39

54:                                               ; preds = %39
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = call i64 @malloc(i32 %58)
  %60 = inttoptr i64 %59 to %union.value*
  %61 = load %struct.table*, %struct.table** %6, align 8
  %62 = getelementptr inbounds %struct.table, %struct.table* %61, i32 0, i32 3
  store %union.value* %60, %union.value** %62, align 8
  %63 = load %struct.table*, %struct.table** %6, align 8
  %64 = getelementptr inbounds %struct.table, %struct.table* %63, i32 0, i32 3
  %65 = load %union.value*, %union.value** %64, align 8
  %66 = icmp eq %union.value* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %54
  br label %146

68:                                               ; preds = %54
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.table*, %struct.table** %6, align 8
  %71 = getelementptr inbounds %struct.table, %struct.table* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %72

72:                                               ; preds = %68, %1
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @countsize(i32* %73, i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %126

78:                                               ; preds = %72
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 %80, 16
  %82 = trunc i64 %81 to i32
  %83 = call i64 @malloc(i32 %82)
  %84 = inttoptr i64 %83 to %struct.node*
  %85 = load %struct.table*, %struct.table** %6, align 8
  %86 = getelementptr inbounds %struct.table, %struct.table* %85, i32 0, i32 2
  store %struct.node* %84, %struct.node** %86, align 8
  %87 = load %struct.table*, %struct.table** %6, align 8
  %88 = getelementptr inbounds %struct.table, %struct.table* %87, i32 0, i32 2
  %89 = load %struct.node*, %struct.node** %88, align 8
  %90 = icmp eq %struct.node* %89, null
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  br label %146

92:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %113, %92
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %116

97:                                               ; preds = %93
  %98 = load i8*, i8** @VALUETYPE_NIL, align 8
  %99 = load %struct.table*, %struct.table** %6, align 8
  %100 = getelementptr inbounds %struct.table, %struct.table* %99, i32 0, i32 2
  %101 = load %struct.node*, %struct.node** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.node, %struct.node* %101, i64 %103
  %105 = getelementptr inbounds %struct.node, %struct.node* %104, i32 0, i32 1
  store i8* %98, i8** %105, align 8
  %106 = load %struct.table*, %struct.table** %6, align 8
  %107 = getelementptr inbounds %struct.table, %struct.table* %106, i32 0, i32 2
  %108 = load %struct.node*, %struct.node** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.node, %struct.node* %108, i64 %110
  %112 = getelementptr inbounds %struct.node, %struct.node* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  br label %113

113:                                              ; preds = %97
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %4, align 4
  br label %93

116:                                              ; preds = %93
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.table*, %struct.table** %6, align 8
  %119 = getelementptr inbounds %struct.table, %struct.table* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load i32*, i32** %3, align 8
  %121 = load %struct.context*, %struct.context** %5, align 8
  %122 = call i32 @fillnocolliding(i32* %120, %struct.context* %121)
  %123 = load i32*, i32** %3, align 8
  %124 = load %struct.context*, %struct.context** %5, align 8
  %125 = call i32 @fillcolliding(i32* %123, %struct.context* %124)
  br label %145

126:                                              ; preds = %72
  store i32 1, i32* %9, align 4
  br label %127

127:                                              ; preds = %141, %126
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp sle i32 %128, %129
  br i1 %130, label %131, label %144

131:                                              ; preds = %127
  %132 = load i32*, i32** %3, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @lua_rawgeti(i32* %132, i32 1, i32 %133)
  %135 = load %struct.context*, %struct.context** %5, align 8
  %136 = load i32*, i32** %3, align 8
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @setarray(%struct.context* %135, i32* %136, i32 -1, i32 %137)
  %139 = load i32*, i32** %3, align 8
  %140 = call i32 @lua_pop(i32* %139, i32 1)
  br label %141

141:                                              ; preds = %131
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %127

144:                                              ; preds = %127
  br label %145

145:                                              ; preds = %144, %116
  store i32 0, i32* %2, align 4
  br label %149

146:                                              ; preds = %91, %67, %37
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @luaL_error(i32* %147, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %146, %145
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.context* @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_rawlen(i32*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @countsize(i32*, i32) #1

declare dso_local i32 @fillnocolliding(i32*, %struct.context*) #1

declare dso_local i32 @fillcolliding(i32*, %struct.context*) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @setarray(%struct.context*, i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
