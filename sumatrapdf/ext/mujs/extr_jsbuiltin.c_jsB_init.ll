; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsbuiltin.c_jsB_init.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsbuiltin.c_jsB_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32*, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@JS_COBJECT = common dso_local global i32 0, align 4
@JS_CARRAY = common dso_local global i32 0, align 4
@JS_CCFUNCTION = common dso_local global i32 0, align 4
@JS_CBOOLEAN = common dso_local global i32 0, align 4
@JS_CNUMBER = common dso_local global i32 0, align 4
@JS_CSTRING = common dso_local global i32 0, align 4
@JS_CDATE = common dso_local global i32 0, align 4
@JS_CERROR = common dso_local global i32 0, align 4
@NAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@JS_READONLY = common dso_local global i32 0, align 4
@JS_DONTENUM = common dso_local global i32 0, align 4
@JS_DONTCONF = common dso_local global i32 0, align 4
@INFINITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Infinity\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"parseInt\00", align 1
@jsB_parseInt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"parseFloat\00", align 1
@jsB_parseFloat = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"isNaN\00", align 1
@jsB_isNaN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"isFinite\00", align 1
@jsB_isFinite = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"decodeURI\00", align 1
@jsB_decodeURI = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"decodeURIComponent\00", align 1
@jsB_decodeURIComponent = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"encodeURI\00", align 1
@jsB_encodeURI = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [19 x i8] c"encodeURIComponent\00", align 1
@jsB_encodeURIComponent = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jsB_init(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %3 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %4 = load i32, i32* @JS_COBJECT, align 4
  %5 = call i8* @jsV_newobject(%struct.TYPE_19__* %3, i32 %4, i32* null)
  %6 = bitcast i8* %5 to i32*
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 7
  store i32* %6, i32** %8, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %10 = load i32, i32* @JS_CARRAY, align 4
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 7
  %13 = load i32*, i32** %12, align 8
  %14 = call i8* @jsV_newobject(%struct.TYPE_19__* %9, i32 %10, i32* %13)
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 14
  store i8* %14, i8** %16, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %18 = load i32, i32* @JS_CCFUNCTION, align 4
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = call i8* @jsV_newobject(%struct.TYPE_19__* %17, i32 %18, i32* %21)
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 13
  store i8* %22, i8** %24, align 8
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %26 = load i32, i32* @JS_CBOOLEAN, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 7
  %29 = load i32*, i32** %28, align 8
  %30 = call i8* @jsV_newobject(%struct.TYPE_19__* %25, i32 %26, i32* %29)
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 12
  store i8* %30, i8** %32, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %34 = load i32, i32* @JS_CNUMBER, align 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 7
  %37 = load i32*, i32** %36, align 8
  %38 = call i8* @jsV_newobject(%struct.TYPE_19__* %33, i32 %34, i32* %37)
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 11
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %42 = load i32, i32* @JS_CSTRING, align 4
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 7
  %45 = load i32*, i32** %44, align 8
  %46 = call i8* @jsV_newobject(%struct.TYPE_19__* %41, i32 %42, i32* %45)
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 10
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %50 = load i32, i32* @JS_COBJECT, align 4
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 7
  %53 = load i32*, i32** %52, align 8
  %54 = call i8* @jsV_newobject(%struct.TYPE_19__* %49, i32 %50, i32* %53)
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 9
  store i8* %54, i8** %56, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %58 = load i32, i32* @JS_CDATE, align 4
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 7
  %61 = load i32*, i32** %60, align 8
  %62 = call i8* @jsV_newobject(%struct.TYPE_19__* %57, i32 %58, i32* %61)
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 8
  store i8* %62, i8** %64, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %66 = load i32, i32* @JS_CERROR, align 4
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 7
  %69 = load i32*, i32** %68, align 8
  %70 = call i8* @jsV_newobject(%struct.TYPE_19__* %65, i32 %66, i32* %69)
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  store i32* %71, i32** %73, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %75 = load i32, i32* @JS_CERROR, align 4
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i8* @jsV_newobject(%struct.TYPE_19__* %74, i32 %75, i32* %78)
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 6
  store i8* %79, i8** %81, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %83 = load i32, i32* @JS_CERROR, align 4
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = call i8* @jsV_newobject(%struct.TYPE_19__* %82, i32 %83, i32* %86)
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 5
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %91 = load i32, i32* @JS_CERROR, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i8* @jsV_newobject(%struct.TYPE_19__* %90, i32 %91, i32* %94)
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 4
  store i8* %95, i8** %97, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %99 = load i32, i32* @JS_CERROR, align 4
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i8* @jsV_newobject(%struct.TYPE_19__* %98, i32 %99, i32* %102)
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %107 = load i32, i32* @JS_CERROR, align 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i8* @jsV_newobject(%struct.TYPE_19__* %106, i32 %107, i32* %110)
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 2
  store i8* %111, i8** %113, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %115 = load i32, i32* @JS_CERROR, align 4
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = call i8* @jsV_newobject(%struct.TYPE_19__* %114, i32 %115, i32* %118)
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 1
  store i8* %119, i8** %121, align 8
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %123 = call i32 @jsB_initobject(%struct.TYPE_19__* %122)
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %125 = call i32 @jsB_initarray(%struct.TYPE_19__* %124)
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %127 = call i32 @jsB_initfunction(%struct.TYPE_19__* %126)
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %129 = call i32 @jsB_initboolean(%struct.TYPE_19__* %128)
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %131 = call i32 @jsB_initnumber(%struct.TYPE_19__* %130)
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %133 = call i32 @jsB_initstring(%struct.TYPE_19__* %132)
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %135 = call i32 @jsB_initregexp(%struct.TYPE_19__* %134)
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %137 = call i32 @jsB_initdate(%struct.TYPE_19__* %136)
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %139 = call i32 @jsB_initerror(%struct.TYPE_19__* %138)
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %141 = call i32 @jsB_initmath(%struct.TYPE_19__* %140)
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %143 = call i32 @jsB_initjson(%struct.TYPE_19__* %142)
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %145 = load i32, i32* @NAN, align 4
  %146 = call i32 @js_pushnumber(%struct.TYPE_19__* %144, i32 %145)
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %148 = load i32, i32* @JS_READONLY, align 4
  %149 = load i32, i32* @JS_DONTENUM, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @JS_DONTCONF, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @js_defglobal(%struct.TYPE_19__* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %152)
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %155 = load i32, i32* @INFINITY, align 4
  %156 = call i32 @js_pushnumber(%struct.TYPE_19__* %154, i32 %155)
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %158 = load i32, i32* @JS_READONLY, align 4
  %159 = load i32, i32* @JS_DONTENUM, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @JS_DONTCONF, align 4
  %162 = or i32 %160, %161
  %163 = call i32 @js_defglobal(%struct.TYPE_19__* %157, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %162)
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %165 = call i32 @js_pushundefined(%struct.TYPE_19__* %164)
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %167 = load i32, i32* @JS_READONLY, align 4
  %168 = load i32, i32* @JS_DONTENUM, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @JS_DONTCONF, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @js_defglobal(%struct.TYPE_19__* %166, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %171)
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %174 = load i32, i32* @jsB_parseInt, align 4
  %175 = call i32 @jsB_globalf(%struct.TYPE_19__* %173, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %174, i32 1)
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %177 = load i32, i32* @jsB_parseFloat, align 4
  %178 = call i32 @jsB_globalf(%struct.TYPE_19__* %176, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %177, i32 1)
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %180 = load i32, i32* @jsB_isNaN, align 4
  %181 = call i32 @jsB_globalf(%struct.TYPE_19__* %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %180, i32 1)
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %183 = load i32, i32* @jsB_isFinite, align 4
  %184 = call i32 @jsB_globalf(%struct.TYPE_19__* %182, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %183, i32 1)
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %186 = load i32, i32* @jsB_decodeURI, align 4
  %187 = call i32 @jsB_globalf(%struct.TYPE_19__* %185, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %186, i32 1)
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %189 = load i32, i32* @jsB_decodeURIComponent, align 4
  %190 = call i32 @jsB_globalf(%struct.TYPE_19__* %188, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %189, i32 1)
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %192 = load i32, i32* @jsB_encodeURI, align 4
  %193 = call i32 @jsB_globalf(%struct.TYPE_19__* %191, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %192, i32 1)
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %195 = load i32, i32* @jsB_encodeURIComponent, align 4
  %196 = call i32 @jsB_globalf(%struct.TYPE_19__* %194, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %195, i32 1)
  ret void
}

declare dso_local i8* @jsV_newobject(%struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32 @jsB_initobject(%struct.TYPE_19__*) #1

declare dso_local i32 @jsB_initarray(%struct.TYPE_19__*) #1

declare dso_local i32 @jsB_initfunction(%struct.TYPE_19__*) #1

declare dso_local i32 @jsB_initboolean(%struct.TYPE_19__*) #1

declare dso_local i32 @jsB_initnumber(%struct.TYPE_19__*) #1

declare dso_local i32 @jsB_initstring(%struct.TYPE_19__*) #1

declare dso_local i32 @jsB_initregexp(%struct.TYPE_19__*) #1

declare dso_local i32 @jsB_initdate(%struct.TYPE_19__*) #1

declare dso_local i32 @jsB_initerror(%struct.TYPE_19__*) #1

declare dso_local i32 @jsB_initmath(%struct.TYPE_19__*) #1

declare dso_local i32 @jsB_initjson(%struct.TYPE_19__*) #1

declare dso_local i32 @js_pushnumber(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @js_defglobal(%struct.TYPE_19__*, i8*, i32) #1

declare dso_local i32 @js_pushundefined(%struct.TYPE_19__*) #1

declare dso_local i32 @jsB_globalf(%struct.TYPE_19__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
