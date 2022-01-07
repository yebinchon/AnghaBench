; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_ldebug.c_getobjname.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_ldebug.c_getobjname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32* }

@.str = private unnamed_addr constant [6 x i8] c"local\00", align 1
@LUA_ENV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"upvalue\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_7__*, i32, i32, i8**)* @getobjname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getobjname(%struct.TYPE_7__* %0, i32 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  %22 = load i32, i32* %7, align 4
  %23 = call i8* @luaF_getlocalname(%struct.TYPE_7__* %19, i32 %21, i32 %22)
  %24 = load i8**, i8*** %9, align 8
  store i8* %23, i8** %24, align 8
  %25 = load i8**, i8*** %9, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %149

29:                                               ; preds = %4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @findsetreg(%struct.TYPE_7__* %30, i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, -1
  br i1 %35, label %36, label %148

36:                                               ; preds = %29
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @GET_OPCODE(i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  switch i32 %46, label %146 [
    i32 129, label %47
    i32 133, label %61
    i32 134, label %61
    i32 132, label %96
    i32 131, label %102
    i32 130, label %102
    i32 128, label %138
  ]

47:                                               ; preds = %36
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @GETARG_B(i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @GETARG_A(i32 %51)
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i8**, i8*** %9, align 8
  %59 = call i8* @getobjname(%struct.TYPE_7__* %55, i32 %56, i32 %57, i8** %58)
  store i8* %59, i8** %5, align 8
  br label %149

60:                                               ; preds = %47
  br label %147

61:                                               ; preds = %36, %36
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @GETARG_C(i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @GETARG_B(i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp eq i32 %66, 134
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %70, 1
  %72 = load i32, i32* %10, align 4
  %73 = call i8* @luaF_getlocalname(%struct.TYPE_7__* %69, i32 %71, i32 %72)
  br label %78

74:                                               ; preds = %61
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = load i32, i32* %15, align 4
  %77 = call i8* @upvalname(%struct.TYPE_7__* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %68
  %79 = phi i8* [ %73, %68 ], [ %77, %74 ]
  store i8* %79, i8** %16, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %14, align 4
  %83 = load i8**, i8*** %9, align 8
  %84 = call i32 @kname(%struct.TYPE_7__* %80, i32 %81, i32 %82, i8** %83)
  %85 = load i8*, i8** %16, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %78
  %88 = load i8*, i8** %16, align 8
  %89 = load i32, i32* @LUA_ENV, align 4
  %90 = call i32 @strcmp(i8* %88, i32 %89)
  %91 = icmp eq i32 %90, 0
  br label %92

92:                                               ; preds = %87, %78
  %93 = phi i1 [ false, %78 ], [ %91, %87 ]
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  store i8* %95, i8** %5, align 8
  br label %149

96:                                               ; preds = %36
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @GETARG_B(i32 %98)
  %100 = call i8* @upvalname(%struct.TYPE_7__* %97, i32 %99)
  %101 = load i8**, i8*** %9, align 8
  store i8* %100, i8** %101, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %149

102:                                              ; preds = %36, %36
  %103 = load i32, i32* %12, align 4
  %104 = icmp eq i32 %103, 131
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @GETARG_Bx(i32 %106)
  br label %118

108:                                              ; preds = %102
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @GETARG_Ax(i32 %116)
  br label %118

118:                                              ; preds = %108, %105
  %119 = phi i32 [ %107, %105 ], [ %117, %108 ]
  store i32 %119, i32* %17, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %17, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = call i32 @ttisstring(i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %118
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %17, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = call i8* @svalue(i32* %134)
  %136 = load i8**, i8*** %9, align 8
  store i8* %135, i8** %136, align 8
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %149

137:                                              ; preds = %118
  br label %147

138:                                              ; preds = %36
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @GETARG_C(i32 %139)
  store i32 %140, i32* %18, align 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %18, align 4
  %144 = load i8**, i8*** %9, align 8
  %145 = call i32 @kname(%struct.TYPE_7__* %141, i32 %142, i32 %143, i8** %144)
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %149

146:                                              ; preds = %36
  br label %147

147:                                              ; preds = %146, %137, %60
  br label %148

148:                                              ; preds = %147, %29
  store i8* null, i8** %5, align 8
  br label %149

149:                                              ; preds = %148, %138, %128, %96, %92, %54, %28
  %150 = load i8*, i8** %5, align 8
  ret i8* %150
}

declare dso_local i8* @luaF_getlocalname(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @findsetreg(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @GET_OPCODE(i32) #1

declare dso_local i32 @GETARG_B(i32) #1

declare dso_local i32 @GETARG_A(i32) #1

declare dso_local i32 @GETARG_C(i32) #1

declare dso_local i8* @upvalname(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @kname(%struct.TYPE_7__*, i32, i32, i8**) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @GETARG_Bx(i32) #1

declare dso_local i32 @GETARG_Ax(i32) #1

declare dso_local i32 @ttisstring(i32*) #1

declare dso_local i8* @svalue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
