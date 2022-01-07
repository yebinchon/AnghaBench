; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_elems2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mshtml/extr_dom.c_test_elems2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_elems2.outer_types = internal constant [2 x i32] [i32 128, i32 129], align 4
@.str = private unnamed_addr constant [6 x i8] c"divid\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"linkid\00", align 1
@TRUE = common dso_local global i32 0, align 4
@VARIANT_FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"stylesheet\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"text/css\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"about:blank\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@VARIANT_TRUE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"prev\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"about:prev\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"<div id=\22innerid\22></div>\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"innerid\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"elem2 == NULL\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"<br><a href=\22about:blank\22 id=\22aid\22>a</a>\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"aid\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"<textarea id=\22ta\22></textarea>\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"ta\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"defval text\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"form = %p\0A\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"<textarea id=\22ta\22>default text</textarea>\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"default text\00", align 1
@.str.23 = private unnamed_addr constant [52 x i8] c"<form id=\22fid\22><textarea id=\22ta\22></textarea></form>\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"fid\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"form = NULL\0A\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"form != elem2\0A\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"<input value=\22val\22 id =\22inputid\22  />\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"inputid\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"new val\00", align 1
@.str.31 = private unnamed_addr constant [95 x i8] c"<form id=\22form\22><input type=\22button\22 /><div><input type=\22text\22 id=\22inputid\22/></div></textarea>\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"form\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@S_OK = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [5 x i8] c"post\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [4 x i8] c"put\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"application/x-www-form-urlencoded\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"multipart/form-data\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"image/png\00", align 1
@.str.40 = private unnamed_addr constant [97 x i8] c"<form id=\22form\22 name=\22form_name\22><select id=\22sform\22><option id=\22oform\22></option></select></form>\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"sform\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"oform\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_elems2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_elems2(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32* @get_doc_elem_by_id(i32* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %5, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @TRUE, align 4
  %12 = call i32* @get_elem_by_id(i32* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %42

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @VARIANT_FALSE, align 4
  %18 = call i32 @test_link_disabled(i32* %16, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @test_link_rel(i32* %19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @test_link_rev(i32* %21, i32* null)
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @test_link_type(i32* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @test_link_href(i32* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @test_link_media(i32* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* @VARIANT_TRUE, align 4
  %31 = call i32 @link_put_disabled(i32* %29, i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @link_put_rel(i32* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @link_put_rev(i32* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @link_put_type(i32* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @link_put_href(i32* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @IHTMLElement_Release(i32* %40)
  br label %42

42:                                               ; preds = %15, %1
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @test_elem_set_innerhtml(i32* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %45 = load i32*, i32** %2, align 8
  %46 = call i32* @get_doc_elem_by_id(i32* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  store i32* %46, i32** %4, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = icmp ne i32* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 (i32, i8*, ...) @ok(i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @test_elem_set_outerhtml(i32* %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @test_elem_all(i32* %53, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @test_elems2.outer_types, i64 0, i64 0), i32 2)
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @IHTMLElement_Release(i32* %55)
  %57 = load i32*, i32** %2, align 8
  %58 = call i32* @get_doc_elem_by_id(i32* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  store i32* %58, i32** %4, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = icmp ne i32* %59, null
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @test_elem_set_outerhtml(i32* %63, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0))
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @test_elem_all(i32* %65, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @test_elems2.outer_types, i64 0, i64 0), i32 1)
  %67 = load i32*, i32** %4, align 8
  %68 = call i32 @IHTMLElement_Release(i32* %67)
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @test_elem_set_innerhtml(i32* %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  %71 = load i32*, i32** %2, align 8
  %72 = load i32, i32* @TRUE, align 4
  %73 = call i32* @get_elem_by_id(i32* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i32 %72)
  store i32* %73, i32** %3, align 8
  %74 = load i32*, i32** %3, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %111

76:                                               ; preds = %42
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @test_textarea_value(i32* %77, i32* null)
  %79 = load i32*, i32** %3, align 8
  %80 = call i32 @test_textarea_put_value(i32* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %81 = load i32*, i32** %3, align 8
  %82 = call i32 @test_textarea_defaultvalue(i32* %81, i8* null)
  %83 = load i32*, i32** %3, align 8
  %84 = call i32 @test_textarea_put_defaultvalue(i32* %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @test_textarea_put_value(i32* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %87 = load i32*, i32** %3, align 8
  %88 = load i32, i32* @VARIANT_FALSE, align 4
  %89 = call i32 @test_textarea_readonly(i32* %87, i32 %88)
  %90 = load i32*, i32** %3, align 8
  %91 = load i32, i32* @VARIANT_TRUE, align 4
  %92 = call i32 @test_textarea_put_readonly(i32* %90, i32 %91)
  %93 = load i32*, i32** %3, align 8
  %94 = load i32, i32* @VARIANT_FALSE, align 4
  %95 = call i32 @test_textarea_put_readonly(i32* %93, i32 %94)
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @test_textarea_type(i32* %96)
  %98 = load i32*, i32** %3, align 8
  %99 = call i32* @get_textarea_form(i32* %98)
  store i32* %99, i32** %6, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = icmp ne i32* %100, null
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i32* %104)
  %106 = load i32*, i32** %3, align 8
  %107 = load i32, i32* @VARIANT_TRUE, align 4
  %108 = call i32 @test_elem_istextedit(i32* %106, i32 %107)
  %109 = load i32*, i32** %3, align 8
  %110 = call i32 @IHTMLElement_Release(i32* %109)
  br label %111

111:                                              ; preds = %76, %42
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @test_elem_set_innerhtml(i32* %112, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0))
  %114 = load i32*, i32** %2, align 8
  %115 = load i32, i32* @TRUE, align 4
  %116 = call i32* @get_elem_by_id(i32* %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i32 %115)
  store i32* %116, i32** %3, align 8
  %117 = load i32*, i32** %3, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %124

119:                                              ; preds = %111
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @test_textarea_defaultvalue(i32* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @IHTMLElement_Release(i32* %122)
  br label %124

124:                                              ; preds = %119, %111
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 @test_elem_set_innerhtml(i32* %125, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.23, i64 0, i64 0))
  %127 = load i32*, i32** %2, align 8
  %128 = load i32, i32* @TRUE, align 4
  %129 = call i32* @get_elem_by_id(i32* %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i32 %128)
  store i32* %129, i32** %3, align 8
  %130 = load i32*, i32** %3, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %156

132:                                              ; preds = %124
  %133 = load i32*, i32** %2, align 8
  %134 = load i32, i32* @TRUE, align 4
  %135 = call i32* @get_elem_by_id(i32* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i32 %134)
  store i32* %135, i32** %4, align 8
  %136 = load i32*, i32** %4, align 8
  %137 = icmp ne i32* %136, null
  %138 = zext i1 %137 to i32
  %139 = call i32 (i32, i8*, ...) @ok(i32 %138, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %140 = load i32*, i32** %3, align 8
  %141 = call i32* @get_textarea_form(i32* %140)
  store i32* %141, i32** %7, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = icmp ne i32* %142, null
  %144 = zext i1 %143 to i32
  %145 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0))
  %146 = load i32*, i32** %7, align 8
  %147 = load i32*, i32** %4, align 8
  %148 = call i32 @iface_cmp(i32* %146, i32* %147)
  %149 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 @IHTMLFormElement_Release(i32* %150)
  %152 = load i32*, i32** %4, align 8
  %153 = call i32 @IHTMLElement_Release(i32* %152)
  %154 = load i32*, i32** %3, align 8
  %155 = call i32 @IHTMLElement_Release(i32* %154)
  br label %156

156:                                              ; preds = %132, %124
  %157 = load i32*, i32** %5, align 8
  %158 = call i32 @test_elem_set_innerhtml(i32* %157, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0))
  %159 = load i32*, i32** %2, align 8
  %160 = load i32, i32* @TRUE, align 4
  %161 = call i32* @get_elem_by_id(i32* %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i32 %160)
  store i32* %161, i32** %3, align 8
  %162 = load i32*, i32** %3, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %175

164:                                              ; preds = %156
  %165 = load i32*, i32** %3, align 8
  %166 = call i32 @test_input_defaultValue(i32* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0))
  %167 = load i32*, i32** %3, align 8
  %168 = call i32 @test_input_put_value(i32* %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %169 = load i32*, i32** %3, align 8
  %170 = call i32 @test_input_put_defaultValue(i32* %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0))
  %171 = load i32*, i32** %3, align 8
  %172 = call i32 @test_input_value(i32* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  %173 = load i32*, i32** %3, align 8
  %174 = call i32 @IHTMLElement_Release(i32* %173)
  br label %175

175:                                              ; preds = %164, %156
  %176 = load i32*, i32** %5, align 8
  %177 = call i32 @test_elem_set_innerhtml(i32* %176, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0))
  %178 = load i32*, i32** %2, align 8
  %179 = load i32*, i32** %5, align 8
  %180 = call i32 @test_insert_adjacent_elems(i32* %178, i32* %179)
  %181 = load i32*, i32** %5, align 8
  %182 = call i32 @test_elem_set_innerhtml(i32* %181, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.31, i64 0, i64 0))
  %183 = load i32*, i32** %2, align 8
  %184 = load i32, i32* @TRUE, align 4
  %185 = call i32* @get_elem_by_id(i32* %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i32 %184)
  store i32* %185, i32** %3, align 8
  %186 = load i32*, i32** %3, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %239

188:                                              ; preds = %175
  %189 = load i32*, i32** %3, align 8
  %190 = call i32 @test_form_length(i32* %189, i32 2)
  %191 = load i32*, i32** %3, align 8
  %192 = call i32 @test_form_item(i32* %191)
  %193 = load i32*, i32** %3, align 8
  %194 = call i32 @test_form_action(i32* %193, i32* null)
  %195 = load i32*, i32** %3, align 8
  %196 = call i32 @test_form_put_action(i32* %195, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %197 = load i32*, i32** %3, align 8
  %198 = call i32 @test_form_method(i32* %197, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0))
  %199 = load i32*, i32** %3, align 8
  %200 = load i32, i32* @S_OK, align 4
  %201 = call i32 @test_form_put_method(i32* %199, i32 %200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  %202 = load i32*, i32** %3, align 8
  %203 = load i32, i32* @E_INVALIDARG, align 4
  %204 = call i32 @test_form_put_method(i32* %202, i32 %203, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0))
  %205 = load i32*, i32** %3, align 8
  %206 = call i32 @test_form_method(i32* %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  %207 = load i32*, i32** %3, align 8
  %208 = call i32 @test_form_name(i32* %207, i32* null)
  %209 = load i32*, i32** %3, align 8
  %210 = call i32 @test_form_put_name(i32* %209, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0))
  %211 = load i32*, i32** %3, align 8
  %212 = call i32 @test_form_encoding(i32* %211, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i64 0, i64 0))
  %213 = load i32*, i32** %3, align 8
  %214 = load i32, i32* @S_OK, align 4
  %215 = call i32 @test_form_put_encoding(i32* %213, i32 %214, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %216 = load i32*, i32** %3, align 8
  %217 = load i32, i32* @S_OK, align 4
  %218 = call i32 @test_form_put_encoding(i32* %216, i32 %217, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0))
  %219 = load i32*, i32** %3, align 8
  %220 = load i32, i32* @E_INVALIDARG, align 4
  %221 = call i32 @test_form_put_encoding(i32* %219, i32 %220, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0))
  %222 = load i32*, i32** %3, align 8
  %223 = call i32 @test_form_encoding(i32* %222, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0))
  %224 = load i32*, i32** %3, align 8
  %225 = call i32 @test_form_elements(i32* %224)
  %226 = load i32*, i32** %3, align 8
  %227 = call i32 @test_form_reset(i32* %226)
  %228 = load i32*, i32** %3, align 8
  %229 = call i32 @test_form_target(i32* %228)
  %230 = load i32*, i32** %3, align 8
  %231 = call i32 @IHTMLElement_Release(i32* %230)
  %232 = load i32*, i32** %2, align 8
  %233 = load i32, i32* @TRUE, align 4
  %234 = call i32* @get_elem_by_id(i32* %232, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0), i32 %233)
  store i32* %234, i32** %3, align 8
  %235 = load i32*, i32** %3, align 8
  %236 = call i32 @test_input_get_form(i32* %235, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %237 = load i32*, i32** %3, align 8
  %238 = call i32 @IHTMLElement_Release(i32* %237)
  br label %239

239:                                              ; preds = %188, %175
  %240 = load i32*, i32** %5, align 8
  %241 = call i32 @test_elem_set_innerhtml(i32* %240, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.40, i64 0, i64 0))
  %242 = load i32*, i32** %2, align 8
  %243 = load i32, i32* @TRUE, align 4
  %244 = call i32* @get_elem_by_id(i32* %242, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0), i32 %243)
  store i32* %244, i32** %3, align 8
  %245 = load i32*, i32** %2, align 8
  %246 = load i32, i32* @TRUE, align 4
  %247 = call i32* @get_elem_by_id(i32* %245, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i32 %246)
  store i32* %247, i32** %4, align 8
  %248 = load i32*, i32** %3, align 8
  %249 = icmp ne i32* %248, null
  br i1 %249, label %250, label %273

250:                                              ; preds = %239
  %251 = load i32*, i32** %4, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %253, label %273

253:                                              ; preds = %250
  %254 = load i32*, i32** %3, align 8
  %255 = load i32*, i32** %4, align 8
  %256 = call i32 @test_select_form(i32* %254, i32* %255)
  %257 = load i32*, i32** %3, align 8
  %258 = call i32 @IHTMLElement_Release(i32* %257)
  %259 = load i32*, i32** %2, align 8
  %260 = load i32, i32* @TRUE, align 4
  %261 = call i32* @get_elem_by_id(i32* %259, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0), i32 %260)
  store i32* %261, i32** %3, align 8
  %262 = load i32*, i32** %3, align 8
  %263 = icmp ne i32* %262, null
  br i1 %263, label %264, label %270

264:                                              ; preds = %253
  %265 = load i32*, i32** %3, align 8
  %266 = load i32*, i32** %4, align 8
  %267 = call i32 @test_option_form(i32* %265, i32* %266)
  %268 = load i32*, i32** %3, align 8
  %269 = call i32 @IHTMLElement_Release(i32* %268)
  br label %270

270:                                              ; preds = %264, %253
  %271 = load i32*, i32** %4, align 8
  %272 = call i32 @IHTMLElement_Release(i32* %271)
  br label %273

273:                                              ; preds = %270, %250, %239
  %274 = load i32*, i32** %5, align 8
  %275 = call i32 @test_attr(i32* %274)
  %276 = load i32*, i32** %2, align 8
  %277 = load i32*, i32** %5, align 8
  %278 = call i32 @test_blocked(i32* %276, i32* %277)
  %279 = load i32*, i32** %2, align 8
  %280 = call i32 @test_elem_names(i32* %279)
  %281 = load i32*, i32** %5, align 8
  %282 = call i32 @IHTMLElement_Release(i32* %281)
  ret void
}

declare dso_local i32* @get_doc_elem_by_id(i32*, i8*) #1

declare dso_local i32* @get_elem_by_id(i32*, i8*, i32) #1

declare dso_local i32 @test_link_disabled(i32*, i32) #1

declare dso_local i32 @test_link_rel(i32*, i8*) #1

declare dso_local i32 @test_link_rev(i32*, i32*) #1

declare dso_local i32 @test_link_type(i32*, i8*) #1

declare dso_local i32 @test_link_href(i32*, i8*) #1

declare dso_local i32 @test_link_media(i32*, i8*) #1

declare dso_local i32 @link_put_disabled(i32*, i32) #1

declare dso_local i32 @link_put_rel(i32*, i8*) #1

declare dso_local i32 @link_put_rev(i32*, i8*) #1

declare dso_local i32 @link_put_type(i32*, i8*) #1

declare dso_local i32 @link_put_href(i32*, i8*) #1

declare dso_local i32 @IHTMLElement_Release(i32*) #1

declare dso_local i32 @test_elem_set_innerhtml(i32*, i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @test_elem_set_outerhtml(i32*, i8*) #1

declare dso_local i32 @test_elem_all(i32*, i32*, i32) #1

declare dso_local i32 @test_textarea_value(i32*, i32*) #1

declare dso_local i32 @test_textarea_put_value(i32*, i8*) #1

declare dso_local i32 @test_textarea_defaultvalue(i32*, i8*) #1

declare dso_local i32 @test_textarea_put_defaultvalue(i32*, i8*) #1

declare dso_local i32 @test_textarea_readonly(i32*, i32) #1

declare dso_local i32 @test_textarea_put_readonly(i32*, i32) #1

declare dso_local i32 @test_textarea_type(i32*) #1

declare dso_local i32* @get_textarea_form(i32*) #1

declare dso_local i32 @test_elem_istextedit(i32*, i32) #1

declare dso_local i32 @iface_cmp(i32*, i32*) #1

declare dso_local i32 @IHTMLFormElement_Release(i32*) #1

declare dso_local i32 @test_input_defaultValue(i32*, i8*) #1

declare dso_local i32 @test_input_put_value(i32*, i8*) #1

declare dso_local i32 @test_input_put_defaultValue(i32*, i8*) #1

declare dso_local i32 @test_input_value(i32*, i8*) #1

declare dso_local i32 @test_insert_adjacent_elems(i32*, i32*) #1

declare dso_local i32 @test_form_length(i32*, i32) #1

declare dso_local i32 @test_form_item(i32*) #1

declare dso_local i32 @test_form_action(i32*, i32*) #1

declare dso_local i32 @test_form_put_action(i32*, i8*) #1

declare dso_local i32 @test_form_method(i32*, i8*) #1

declare dso_local i32 @test_form_put_method(i32*, i32, i8*) #1

declare dso_local i32 @test_form_name(i32*, i32*) #1

declare dso_local i32 @test_form_put_name(i32*, i8*) #1

declare dso_local i32 @test_form_encoding(i32*, i8*) #1

declare dso_local i32 @test_form_put_encoding(i32*, i32, i8*) #1

declare dso_local i32 @test_form_elements(i32*) #1

declare dso_local i32 @test_form_reset(i32*) #1

declare dso_local i32 @test_form_target(i32*) #1

declare dso_local i32 @test_input_get_form(i32*, i8*) #1

declare dso_local i32 @test_select_form(i32*, i32*) #1

declare dso_local i32 @test_option_form(i32*, i32*) #1

declare dso_local i32 @test_attr(i32*) #1

declare dso_local i32 @test_blocked(i32*, i32*) #1

declare dso_local i32 @test_elem_names(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
