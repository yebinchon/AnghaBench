; ModuleID = '/home/carl/AnghaBench/zfs/module/lua/extr_lvm.c_luaV_equalobj_.c'
source_filename = "/home/carl/AnghaBench/zfs/module/lua/extr_lvm.c_luaV_equalobj_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@TM_EQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaV_equalobj_(%struct.TYPE_7__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = call i32 @ttisequal(i32* %9, i32* %10)
  %12 = call i32 @lua_assert(i32 %11)
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @ttype(i32* %13)
  switch i32 %14, label %103 [
    i32 132, label %15
    i32 131, label %16
    i32 136, label %22
    i32 134, label %29
    i32 135, label %36
    i32 130, label %43
    i32 133, label %49
    i32 128, label %55
    i32 129, label %79
  ]

15:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %136

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @nvalue(i32* %17)
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @nvalue(i32* %19)
  %21 = call i32 @luai_numeq(i32 %18, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %136

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @bvalue(i32* %23)
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @bvalue(i32* %25)
  %27 = icmp eq i32 %24, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %4, align 4
  br label %136

29:                                               ; preds = %3
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @pvalue(i32* %30)
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @pvalue(i32* %32)
  %34 = icmp eq i32 %31, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %136

36:                                               ; preds = %3
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @fvalue(i32* %37)
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @fvalue(i32* %39)
  %41 = icmp eq i32 %38, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %136

43:                                               ; preds = %3
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @rawtsvalue(i32* %44)
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @rawtsvalue(i32* %46)
  %48 = call i32 @eqshrstr(i32 %45, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %136

49:                                               ; preds = %3
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @rawtsvalue(i32* %50)
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @rawtsvalue(i32* %52)
  %54 = call i32 @luaS_eqlngstr(i32 %51, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %136

55:                                               ; preds = %3
  %56 = load i32*, i32** %6, align 8
  %57 = call %struct.TYPE_8__* @uvalue(i32* %56)
  %58 = load i32*, i32** %7, align 8
  %59 = call %struct.TYPE_8__* @uvalue(i32* %58)
  %60 = icmp eq %struct.TYPE_8__* %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 1, i32* %4, align 4
  br label %136

62:                                               ; preds = %55
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %64 = icmp eq %struct.TYPE_7__* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %136

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = call %struct.TYPE_8__* @uvalue(i32* %69)
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = call %struct.TYPE_8__* @uvalue(i32* %73)
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @TM_EQ, align 4
  %78 = call i32* @get_equalTM(%struct.TYPE_7__* %68, i32 %72, i32 %76, i32 %77)
  store i32* %78, i32** %8, align 8
  br label %113

79:                                               ; preds = %3
  %80 = load i32*, i32** %6, align 8
  %81 = call %struct.TYPE_9__* @hvalue(i32* %80)
  %82 = load i32*, i32** %7, align 8
  %83 = call %struct.TYPE_9__* @hvalue(i32* %82)
  %84 = icmp eq %struct.TYPE_9__* %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 1, i32* %4, align 4
  br label %136

86:                                               ; preds = %79
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = icmp eq %struct.TYPE_7__* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 0, i32* %4, align 4
  br label %136

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = call %struct.TYPE_9__* @hvalue(i32* %93)
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = call %struct.TYPE_9__* @hvalue(i32* %97)
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @TM_EQ, align 4
  %102 = call i32* @get_equalTM(%struct.TYPE_7__* %92, i32 %96, i32 %100, i32 %101)
  store i32* %102, i32** %8, align 8
  br label %113

103:                                              ; preds = %3
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @iscollectable(i32* %104)
  %106 = call i32 @lua_assert(i32 %105)
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @gcvalue(i32* %107)
  %109 = load i32*, i32** %7, align 8
  %110 = call i32 @gcvalue(i32* %109)
  %111 = icmp eq i32 %108, %110
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %4, align 4
  br label %136

113:                                              ; preds = %91, %67
  %114 = load i32*, i32** %8, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %118 = icmp eq %struct.TYPE_7__* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %116, %113
  store i32 0, i32* %4, align 4
  br label %136

120:                                              ; preds = %116
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @callTM(%struct.TYPE_7__* %121, i32* %122, i32* %123, i32* %124, i32 %127, i32 1)
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @l_isfalse(i32 %131)
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = zext i1 %134 to i32
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %120, %119, %103, %89, %85, %65, %61, %49, %43, %36, %29, %22, %16, %15
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @ttisequal(i32*, i32*) #1

declare dso_local i32 @ttype(i32*) #1

declare dso_local i32 @luai_numeq(i32, i32) #1

declare dso_local i32 @nvalue(i32*) #1

declare dso_local i32 @bvalue(i32*) #1

declare dso_local i32 @pvalue(i32*) #1

declare dso_local i32 @fvalue(i32*) #1

declare dso_local i32 @eqshrstr(i32, i32) #1

declare dso_local i32 @rawtsvalue(i32*) #1

declare dso_local i32 @luaS_eqlngstr(i32, i32) #1

declare dso_local %struct.TYPE_8__* @uvalue(i32*) #1

declare dso_local i32* @get_equalTM(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_9__* @hvalue(i32*) #1

declare dso_local i32 @iscollectable(i32*) #1

declare dso_local i32 @gcvalue(i32*) #1

declare dso_local i32 @callTM(%struct.TYPE_7__*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @l_isfalse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
