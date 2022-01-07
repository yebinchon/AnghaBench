; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cparse.c_cp_expr_postfix.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_cparse.c_cp_expr_postfix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i8, i32*, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64, i32 }

@CTOK_DEREF = common dso_local global i8 0, align 1
@CTOK_IDENT = common dso_local global i8 0, align 1
@CTSIZE_INVALID = common dso_local global i64 0, align 8
@LJ_ERR_FFI_BADMEMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_23__*)* @cp_expr_postfix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_expr_postfix(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_23__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  br label %10

10:                                               ; preds = %182, %2
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %12 = call i64 @cp_opt(%struct.TYPE_24__* %11, i8 signext 91)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %51

14:                                               ; preds = %10
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %16 = call i32 @cp_expr_comma(%struct.TYPE_24__* %15, %struct.TYPE_23__* %6)
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.TYPE_22__* @lj_ctype_rawref(%struct.TYPE_25__* %19, i32 %22)
  store %struct.TYPE_22__* %23, %struct.TYPE_22__** %5, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ctype_ispointer(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %14
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.TYPE_22__* @lj_ctype_rawref(%struct.TYPE_25__* %32, i32 %34)
  store %struct.TYPE_22__* %35, %struct.TYPE_22__** %5, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ctype_ispointer(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %29
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %44 = call i32 @cp_err_badidx(%struct.TYPE_24__* %42, %struct.TYPE_22__* %43)
  br label %45

45:                                               ; preds = %41, %29
  br label %46

46:                                               ; preds = %45, %14
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %48 = call i32 @cp_check(%struct.TYPE_24__* %47, i8 signext 93)
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %182

51:                                               ; preds = %10
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = load i8, i8* %53, align 8
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 46
  br i1 %56, label %65, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = load i8, i8* %59, align 8
  %61 = sext i8 %60 to i32
  %62 = load i8, i8* @CTOK_DEREF, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %180

65:                                               ; preds = %57, %51
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %67, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.TYPE_22__* @lj_ctype_rawref(%struct.TYPE_25__* %68, i32 %71)
  store %struct.TYPE_22__* %72, %struct.TYPE_22__** %5, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i8, i8* %74, align 8
  %76 = sext i8 %75 to i32
  %77 = load i8, i8* @CTOK_DEREF, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %65
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @ctype_ispointer(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %89 = call i32 @cp_err_badidx(%struct.TYPE_24__* %87, %struct.TYPE_22__* %88)
  br label %90

90:                                               ; preds = %86, %80
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %92, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @ctype_cid(i32 %96)
  %98 = call %struct.TYPE_22__* @lj_ctype_rawref(%struct.TYPE_25__* %93, i32 %97)
  store %struct.TYPE_22__* %98, %struct.TYPE_22__** %5, align 8
  br label %99

99:                                               ; preds = %90, %65
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %101 = call i32 @cp_next(%struct.TYPE_24__* %100)
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 0
  %104 = load i8, i8* %103, align 8
  %105 = sext i8 %104 to i32
  %106 = load i8, i8* @CTOK_IDENT, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %105, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %99
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %111 = load i8, i8* @CTOK_IDENT, align 1
  %112 = call i32 @cp_err_token(%struct.TYPE_24__* %110, i8 signext %111)
  br label %113

113:                                              ; preds = %109, %99
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @ctype_isstruct(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %113
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @CTSIZE_INVALID, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %141, label %125

125:                                              ; preds = %119
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %127, align 8
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = call %struct.TYPE_22__* @lj_ctype_getfield(%struct.TYPE_25__* %128, %struct.TYPE_22__* %129, i32* %132, i32* %7)
  store %struct.TYPE_22__* %133, %struct.TYPE_22__** %8, align 8
  %134 = icmp ne %struct.TYPE_22__* %133, null
  br i1 %134, label %135, label %141

135:                                              ; preds = %125
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @ctype_isbitfield(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %162

141:                                              ; preds = %135, %125, %119, %113
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %148, align 8
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %151 = call i32 @ctype_typeid(%struct.TYPE_25__* %149, %struct.TYPE_22__* %150)
  %152 = call i32* @lj_ctype_repr(i32 %146, i32 %151, i32* null)
  store i32* %152, i32** %9, align 8
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %154 = load i32, i32* @LJ_ERR_FFI_BADMEMBER, align 4
  %155 = load i32*, i32** %9, align 8
  %156 = call i32 @strdata(i32* %155)
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @strdata(i32* %159)
  %161 = call i32 @cp_errmsg(%struct.TYPE_24__* %153, i32 0, i32 %154, i32 %156, i32 %160)
  br label %162

162:                                              ; preds = %141, %135
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  store %struct.TYPE_22__* %163, %struct.TYPE_22__** %5, align 8
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @ctype_isconstval(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  br label %174

173:                                              ; preds = %162
  br label %174

174:                                              ; preds = %173, %169
  %175 = phi i64 [ %172, %169 ], [ 0, %173 ]
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 0
  store i64 %175, i64* %177, align 8
  %178 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %179 = call i32 @cp_next(%struct.TYPE_24__* %178)
  br label %181

180:                                              ; preds = %57
  ret void

181:                                              ; preds = %174
  br label %182

182:                                              ; preds = %181, %46
  %183 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @ctype_cid(i32 %185)
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 8
  br label %10
}

declare dso_local i64 @cp_opt(%struct.TYPE_24__*, i8 signext) #1

declare dso_local i32 @cp_expr_comma(%struct.TYPE_24__*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @lj_ctype_rawref(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ctype_ispointer(i32) #1

declare dso_local i32 @cp_err_badidx(%struct.TYPE_24__*, %struct.TYPE_22__*) #1

declare dso_local i32 @cp_check(%struct.TYPE_24__*, i8 signext) #1

declare dso_local i32 @ctype_cid(i32) #1

declare dso_local i32 @cp_next(%struct.TYPE_24__*) #1

declare dso_local i32 @cp_err_token(%struct.TYPE_24__*, i8 signext) #1

declare dso_local i32 @ctype_isstruct(i32) #1

declare dso_local %struct.TYPE_22__* @lj_ctype_getfield(%struct.TYPE_25__*, %struct.TYPE_22__*, i32*, i32*) #1

declare dso_local i64 @ctype_isbitfield(i32) #1

declare dso_local i32* @lj_ctype_repr(i32, i32, i32*) #1

declare dso_local i32 @ctype_typeid(%struct.TYPE_25__*, %struct.TYPE_22__*) #1

declare dso_local i32 @cp_errmsg(%struct.TYPE_24__*, i32, i32, i32, i32) #1

declare dso_local i32 @strdata(i32*) #1

declare dso_local i64 @ctype_isconstval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
