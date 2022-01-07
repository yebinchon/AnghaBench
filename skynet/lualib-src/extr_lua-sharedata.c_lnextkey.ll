; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_lnextkey.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_lnextkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { i32, i64*, i32, i32, %struct.node* }
%struct.node = type { i32 }

@VALUETYPE_NIL = common dso_local global i64 0, align 8
@LUA_TNUMBER = common dso_local global i32 0, align 4
@KEYTYPE_INTEGER = common dso_local global i32 0, align 4
@KEYTYPE_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lnextkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lnextkey(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.node*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call %struct.table* @get_table(i32* %16, i32 1)
  store %struct.table* %17, %struct.table** %4, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = call i64 @lua_isnoneornil(i32* %18, i32 2)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %1
  %22 = load %struct.table*, %struct.table** %4, align 8
  %23 = getelementptr inbounds %struct.table, %struct.table* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %49, %26
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.table*, %struct.table** %4, align 8
  %30 = getelementptr inbounds %struct.table, %struct.table* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = load %struct.table*, %struct.table** %4, align 8
  %35 = getelementptr inbounds %struct.table, %struct.table* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VALUETYPE_NIL, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i32 @lua_pushinteger(i32* %44, i32 %46)
  store i32 1, i32* %2, align 4
  br label %157

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %27

52:                                               ; preds = %27
  br label %53

53:                                               ; preds = %52, %21
  %54 = load i32*, i32** %3, align 8
  %55 = load %struct.table*, %struct.table** %4, align 8
  %56 = call i32 @pushfirsthash(i32* %54, %struct.table* %55)
  store i32 %56, i32* %2, align 4
  br label %157

57:                                               ; preds = %1
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @lua_type(i32* %58, i32 2)
  store i32 %59, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %10, align 8
  store i8* null, i8** %11, align 8
  %60 = load %struct.table*, %struct.table** %4, align 8
  %61 = getelementptr inbounds %struct.table, %struct.table* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @LUA_TNUMBER, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %114

66:                                               ; preds = %57
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @lua_isinteger(i32* %67, i32 2)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %157

71:                                               ; preds = %66
  %72 = load i32*, i32** %3, align 8
  %73 = call i64 @lua_tointeger(i32* %72, i32 2)
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %110

77:                                               ; preds = %71
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp sle i32 %78, %79
  br i1 %80, label %81, label %110

81:                                               ; preds = %77
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %103, %81
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %83
  %88 = load %struct.table*, %struct.table** %4, align 8
  %89 = getelementptr inbounds %struct.table, %struct.table* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %13, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @VALUETYPE_NIL, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %87
  %98 = load i32*, i32** %3, align 8
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, 1
  %101 = call i32 @lua_pushinteger(i32* %98, i32 %100)
  store i32 1, i32* %2, align 4
  br label %157

102:                                              ; preds = %87
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %13, align 4
  br label %83

106:                                              ; preds = %83
  %107 = load i32*, i32** %3, align 8
  %108 = load %struct.table*, %struct.table** %4, align 8
  %109 = call i32 @pushfirsthash(i32* %107, %struct.table* %108)
  store i32 %109, i32* %2, align 4
  br label %157

110:                                              ; preds = %77, %71
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %7, align 8
  %113 = load i32, i32* @KEYTYPE_INTEGER, align 4
  store i32 %113, i32* %9, align 4
  br label %121

114:                                              ; preds = %57
  %115 = load i32*, i32** %3, align 8
  %116 = call i8* @luaL_checklstring(i32* %115, i32 2, i64* %10)
  store i8* %116, i8** %11, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = load i64, i64* %10, align 8
  %119 = call i64 @calchash(i8* %117, i64 %118)
  store i64 %119, i64* %7, align 8
  %120 = load i32, i32* @KEYTYPE_STRING, align 4
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %114, %110
  %122 = load %struct.table*, %struct.table** %4, align 8
  %123 = load i64, i64* %7, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i8*, i8** %11, align 8
  %127 = load i64, i64* %10, align 8
  %128 = call %struct.node* @lookup_key(%struct.table* %122, i64 %123, i32 %124, i32 %125, i8* %126, i64 %127)
  store %struct.node* %128, %struct.node** %14, align 8
  %129 = load %struct.node*, %struct.node** %14, align 8
  %130 = icmp ne %struct.node* %129, null
  br i1 %130, label %131, label %156

131:                                              ; preds = %121
  %132 = load %struct.node*, %struct.node** %14, align 8
  %133 = getelementptr inbounds %struct.node, %struct.node* %132, i32 1
  store %struct.node* %133, %struct.node** %14, align 8
  %134 = load %struct.node*, %struct.node** %14, align 8
  %135 = load %struct.table*, %struct.table** %4, align 8
  %136 = getelementptr inbounds %struct.table, %struct.table* %135, i32 0, i32 4
  %137 = load %struct.node*, %struct.node** %136, align 8
  %138 = ptrtoint %struct.node* %134 to i64
  %139 = ptrtoint %struct.node* %137 to i64
  %140 = sub i64 %138, %139
  %141 = sdiv exact i64 %140, 4
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %15, align 4
  %144 = load %struct.table*, %struct.table** %4, align 8
  %145 = getelementptr inbounds %struct.table, %struct.table* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %143, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %131
  store i32 0, i32* %2, align 4
  br label %157

149:                                              ; preds = %131
  %150 = load i32*, i32** %3, align 8
  %151 = load %struct.table*, %struct.table** %4, align 8
  %152 = getelementptr inbounds %struct.table, %struct.table* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.node*, %struct.node** %14, align 8
  %155 = call i32 @pushkey(i32* %150, i32 %153, %struct.node* %154)
  store i32 1, i32* %2, align 4
  br label %157

156:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %156, %149, %148, %106, %97, %70, %53, %43
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.table* @get_table(i32*, i32) #1

declare dso_local i64 @lua_isnoneornil(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @pushfirsthash(i32*, %struct.table*) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_isinteger(i32*, i32) #1

declare dso_local i64 @lua_tointeger(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @calchash(i8*, i64) #1

declare dso_local %struct.node* @lookup_key(%struct.table*, i64, i32, i32, i8*, i64) #1

declare dso_local i32 @pushkey(i32*, i32, %struct.node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
