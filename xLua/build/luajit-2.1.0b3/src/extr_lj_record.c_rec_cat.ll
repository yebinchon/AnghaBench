; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_rec_cat.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_record.c_rec_cat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8**, i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@IR_TOSTR = common dso_local global i32 0, align 4
@IRT_STR = common dso_local global i32 0, align 4
@IRTOSTR_NUM = common dso_local global i8* null, align 8
@IRTOSTR_INT = common dso_local global i8* null, align 8
@IR_BUFHDR = common dso_local global i32 0, align 4
@IRT_PGC = common dso_local global i32 0, align 4
@IRBUFHDR_RESET = common dso_local global i8* null, align 8
@IR_BUFPUT = common dso_local global i32 0, align 4
@IR_BUFSTR = common dso_local global i32 0, align 4
@MM_concat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_13__*, i64, i64)* @rec_cat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rec_cat(%struct.TYPE_13__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca [5 x i32], align 16
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i8**, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  store i8** %21, i8*** %8, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ult i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @lua_assert(i32 %25)
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %36, %3
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ule i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @getslot(%struct.TYPE_13__* %33, i64 %34)
  br label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %10, align 8
  br label %28

39:                                               ; preds = %28
  %40 = load i8**, i8*** %8, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @tref_isnumber_str(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %160

45:                                               ; preds = %39
  %46 = load i8**, i8*** %8, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 -1
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @tref_isnumber_str(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %160

51:                                               ; preds = %45
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i8*, i8** %54, i64 %55
  store i8** %56, i8*** %16, align 8
  %57 = load i8**, i8*** %8, align 8
  store i8** %57, i8*** %14, align 8
  br label %58

58:                                               ; preds = %93, %51
  %59 = load i8**, i8*** %14, align 8
  %60 = load i8**, i8*** %16, align 8
  %61 = icmp uge i8** %59, %60
  br i1 %61, label %62, label %96

62:                                               ; preds = %58
  %63 = load i8**, i8*** %14, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = call i64 @tref_isnumber(i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load i32, i32* @IR_TOSTR, align 4
  %69 = load i32, i32* @IRT_STR, align 4
  %70 = call i32 @IRT(i32 %68, i32 %69)
  %71 = load i8**, i8*** %14, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = load i8**, i8*** %14, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @tref_isnum(i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i8*, i8** @IRTOSTR_NUM, align 8
  br label %81

79:                                               ; preds = %67
  %80 = load i8*, i8** @IRTOSTR_INT, align 8
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i8* [ %78, %77 ], [ %80, %79 ]
  %83 = call i8* @emitir(i32 %70, i8* %72, i8* %82)
  %84 = load i8**, i8*** %14, align 8
  store i8* %83, i8** %84, align 8
  br label %92

85:                                               ; preds = %62
  %86 = load i8**, i8*** %14, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @tref_isstr(i8* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  br label %96

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91, %81
  br label %93

93:                                               ; preds = %92
  %94 = load i8**, i8*** %14, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i32 -1
  store i8** %95, i8*** %14, align 8
  br label %58

96:                                               ; preds = %90, %58
  %97 = load i8**, i8*** %14, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i32 1
  store i8** %98, i8*** %14, align 8
  store i8** %98, i8*** %15, align 8
  %99 = load i32, i32* @IR_BUFHDR, align 4
  %100 = load i32, i32* @IRT_PGC, align 4
  %101 = call i32 @IRT(i32 %99, i32 %100)
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %104 = call %struct.TYPE_12__* @J2G(%struct.TYPE_13__* %103)
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = call i8* @lj_ir_kptr(%struct.TYPE_13__* %102, i32* %105)
  %107 = load i8*, i8** @IRBUFHDR_RESET, align 8
  %108 = call i8* @emitir(i32 %101, i8* %106, i8* %107)
  store i8* %108, i8** %13, align 8
  store i8* %108, i8** %12, align 8
  br label %109

109:                                              ; preds = %118, %96
  %110 = load i32, i32* @IR_BUFPUT, align 4
  %111 = load i32, i32* @IRT_PGC, align 4
  %112 = call i32 @IRT(i32 %110, i32 %111)
  %113 = load i8*, i8** %12, align 8
  %114 = load i8**, i8*** %14, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i32 1
  store i8** %115, i8*** %14, align 8
  %116 = load i8*, i8** %114, align 8
  %117 = call i8* @emitir(i32 %112, i8* %113, i8* %116)
  store i8* %117, i8** %12, align 8
  br label %118

118:                                              ; preds = %109
  %119 = load i8**, i8*** %14, align 8
  %120 = load i8**, i8*** %8, align 8
  %121 = icmp ule i8** %119, %120
  br i1 %121, label %109, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* @IR_BUFSTR, align 4
  %124 = load i32, i32* @IRT_STR, align 4
  %125 = call i32 @IRT(i32 %123, i32 %124)
  %126 = load i8*, i8** %12, align 8
  %127 = load i8*, i8** %13, align 8
  %128 = call i8* @emitir(i32 %125, i8* %126, i8* %127)
  store i8* %128, i8** %12, align 8
  %129 = load i8**, i8*** %15, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i8**, i8*** %131, align 8
  %133 = ptrtoint i8** %129 to i64
  %134 = ptrtoint i8** %132 to i64
  %135 = sub i64 %133, %134
  %136 = sdiv exact i64 %135, 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  store i64 %136, i64* %138, align 8
  %139 = load i8**, i8*** %15, align 8
  %140 = load i8**, i8*** %16, align 8
  %141 = icmp eq i8** %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %122
  %143 = load i8*, i8** %12, align 8
  store i8* %143, i8** %4, align 8
  br label %222

144:                                              ; preds = %122
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = add i64 %147, -1
  store i64 %148, i64* %146, align 8
  store i64 %147, i64* %7, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = load i8**, i8*** %15, align 8
  store i8* %149, i8** %150, align 8
  %151 = load i8**, i8*** %15, align 8
  store i8** %151, i8*** %8, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %157 = call %struct.TYPE_12__* @J2G(%struct.TYPE_13__* %156)
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = call i32 @setstrV(%struct.TYPE_15__* %154, i32* %155, i32* %158)
  br label %177

160:                                              ; preds = %45, %39
  %161 = load i64, i64* %7, align 8
  %162 = sub i64 %161, 1
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  store i64 %162, i64* %164, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 2
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i64, i64* %7, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = call i32 @copyTV(%struct.TYPE_15__* %167, i32* %168, i32* %175)
  br label %177

177:                                              ; preds = %160, %144
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 2
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* %7, align 8
  %188 = sub i64 %187, 1
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = call i32 @copyTV(%struct.TYPE_15__* %180, i32* %181, i32* %189)
  %191 = load i8**, i8*** %8, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i64 -1
  %193 = load i8*, i8** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store i8* %193, i8** %194, align 8
  %195 = load i8**, i8*** %8, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i64 0
  %197 = load i8*, i8** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  store i8* %197, i8** %198, align 8
  %199 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 2
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* %7, align 8
  %206 = sub i64 %205, 1
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = call i32 @memcpy(i32* %199, i32* %207, i32 20)
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %210 = load i32, i32* @MM_concat, align 4
  %211 = call i32 @rec_mm_arith(%struct.TYPE_13__* %209, %struct.TYPE_14__* %11, i32 %210)
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = load i64, i64* %7, align 8
  %218 = sub i64 %217, 1
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %221 = call i32 @memcpy(i32* %219, i32* %220, i32 20)
  store i8* null, i8** %4, align 8
  br label %222

222:                                              ; preds = %177, %142
  %223 = load i8*, i8** %4, align 8
  ret i8* %223
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @getslot(%struct.TYPE_13__*, i64) #1

declare dso_local i64 @tref_isnumber_str(i8*) #1

declare dso_local i64 @tref_isnumber(i8*) #1

declare dso_local i8* @emitir(i32, i8*, i8*) #1

declare dso_local i32 @IRT(i32, i32) #1

declare dso_local i64 @tref_isnum(i8*) #1

declare dso_local i32 @tref_isstr(i8*) #1

declare dso_local i8* @lj_ir_kptr(%struct.TYPE_13__*, i32*) #1

declare dso_local %struct.TYPE_12__* @J2G(%struct.TYPE_13__*) #1

declare dso_local i32 @setstrV(%struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @copyTV(%struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @rec_mm_arith(%struct.TYPE_13__*, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
