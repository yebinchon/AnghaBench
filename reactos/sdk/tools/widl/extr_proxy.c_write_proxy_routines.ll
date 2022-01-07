; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_proxy.c_write_proxy_routines.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/widl/extr_proxy.c_write_proxy_routines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }

@proxy_token = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"#ifndef __REDQ_RPCPROXY_H_VERSION__\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"#define __REQUIRED_RPCPROXY_H_VERSION__ %u\0A\00", align 1
@MODE_Oif = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"#define USE_STUBLESS_PROXY\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"#include \22rpcproxy.h\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"#ifndef __RPCPROXY_H_VERSION__\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"#error This code needs a newer version of rpcproxy.h\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"#endif /* __RPCPROXY_H_VERSION__ */\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"#include \22%s\22\0A\00", align 1
@header_name = common dso_local global i32 0, align 4
@need_proxy_and_inline_stubs = common dso_local global i32 0, align 4
@proxy = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"struct __proxy_frame\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"    __DECL_EXCEPTION_FRAME\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"    MIDL_STUB_MESSAGE _StubMsg;\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"    void             *This;\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"static int __proxy_filter( struct __proxy_frame *__frame )\0A\00", align 1
@.str.17 = private unnamed_addr constant [66 x i8] c"    return (__frame->_StubMsg.dwStubPhase != PROXY_SENDRECEIVE);\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@indent = common dso_local global i32 0, align 4
@need_proxy = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [29 x i8] c"#if !defined(__RPC_WIN%u__)\0A\00", align 1
@pointer_size = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [47 x i8] c"#error Invalid build platform for this proxy.\0A\00", align 1
@.str.21 = private unnamed_addr constant [63 x i8] c"static const CInterfaceProxyVtbl* const _%s_ProxyVtblList[] =\0A\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"    (const CInterfaceProxyVtbl*)&_%sProxyVtbl,\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"    0\0A\00", align 1
@.str.24 = private unnamed_addr constant [61 x i8] c"static const CInterfaceStubVtbl* const _%s_StubVtblList[] =\0A\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"    &_%sStubVtbl,\0A\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"static PCInterfaceName const _%s_InterfaceNamesList[] =\0A\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"    \22%s\22,\0A\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"static const IID * _%s_BaseIIDList[] =\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"    &IID_%s,  /* %s */\0A\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"    0,\0A\00", align 1
@.str.31 = private unnamed_addr constant [67 x i8] c"static int __stdcall _%s_IID_Lookup(const IID* pIID, int* pIndex)\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"    int low = 0, high = %d;\0A\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"    while (low <= high)\0A\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"    {\0A\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"        int pos = (low + high) / 2;\0A\00", align 1
@.str.36 = private unnamed_addr constant [58 x i8] c"        int res = IID_GENERIC_CHECK_IID(_%s, pIID, pos);\0A\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"        if (!res) { *pIndex = pos; return 1; }\0A\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"        if (res > 0) low = pos + 1;\0A\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"        else high = pos - 1;\0A\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"    }\0A\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"    return 0;\0A\00", align 1
@.str.42 = private unnamed_addr constant [44 x i8] c"static const IID *_AsyncInterfaceTable[] =\0A\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"    &IID_%s,\0A\00", align 1
@.str.44 = private unnamed_addr constant [25 x i8] c"    (IID*)(LONG_PTR)-1,\0A\00", align 1
@.str.45 = private unnamed_addr constant [64 x i8] c"const ExtendedProxyFileInfo %s_ProxyFileInfo DECLSPEC_HIDDEN =\0A\00", align 1
@.str.46 = private unnamed_addr constant [57 x i8] c"    (const PCInterfaceProxyVtblList*)_%s_ProxyVtblList,\0A\00", align 1
@.str.47 = private unnamed_addr constant [55 x i8] c"    (const PCInterfaceStubVtblList*)_%s_StubVtblList,\0A\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"    _%s_InterfaceNamesList,\0A\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"    _%s_BaseIIDList,\0A\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"    _%s_IID_Lookup,\0A\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"    %d,\0A\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"    %u,\0A\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"    %s,\0A\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"_AsyncInterfaceTable\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @write_proxy_routines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_proxy_routines(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__**, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %4, align 4
  %12 = load i8*, i8** @proxy_token, align 8
  store i8* %12, i8** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %14 = call i64 (...) @get_stub_mode()
  %15 = load i64, i64* @MODE_Oif, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 475, i32 440
  %19 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %22 = call i64 (...) @get_stub_mode()
  %23 = load i64, i64* @MODE_Oif, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %1
  %28 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %33 = load i32, i32* @header_name, align 4
  %34 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %33)
  %35 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32*, i32** %2, align 8
  %37 = load i32, i32* @need_proxy_and_inline_stubs, align 4
  %38 = call i64 @does_any_iface(i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %27
  %41 = load i32, i32* @proxy, align 4
  %42 = call i32 @write_exceptions(i32 %41)
  %43 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %44 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %45 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %46 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  %48 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %49 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %50 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %51 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i64 0, i64 0))
  %52 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %53 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.17, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  %55 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %56

56:                                               ; preds = %40, %27
  %57 = load i32, i32* @proxy, align 4
  %58 = load i32, i32* @indent, align 4
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* @need_proxy, align 4
  %61 = call i32 @write_formatstringsdecl(i32 %57, i32 %58, i32* %59, i32 %60)
  %62 = call i32 (...) @write_stubdescproto()
  %63 = load i32*, i32** %2, align 8
  %64 = call i32 @write_proxy_stmts(i32* %63, i32* %4)
  %65 = load i32, i32* @proxy, align 4
  %66 = load i8*, i8** @proxy_token, align 8
  %67 = call i32 @write_expr_eval_routines(i32 %65, i8* %66)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %56
  %71 = load i32, i32* @proxy, align 4
  %72 = load i8*, i8** @proxy_token, align 8
  %73 = call i32 @write_expr_eval_routine_list(i32 %71, i8* %72)
  br label %74

74:                                               ; preds = %70, %56
  %75 = load i32, i32* @proxy, align 4
  %76 = call i32 @write_user_quad_list(i32 %75)
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @write_stubdesc(i32 %77)
  %79 = load i32, i32* @pointer_size, align 4
  %80 = icmp eq i32 %79, 8
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 64, i32 32
  %83 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i32 %82)
  %84 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i64 0, i64 0))
  %85 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %86 = call i32 (i8*, ...) @print_proxy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @proxy, align 4
  %88 = load i32*, i32** %2, align 8
  %89 = load i32, i32* @need_proxy, align 4
  %90 = call i32 @write_procformatstring(i32 %87, i32* %88, i32 %89)
  %91 = load i32, i32* @proxy, align 4
  %92 = load i32*, i32** %2, align 8
  %93 = load i32, i32* @need_proxy, align 4
  %94 = call i32 @write_typeformatstring(i32 %91, i32* %92, i32 %93)
  %95 = load i32*, i32** %2, align 8
  %96 = call %struct.TYPE_9__** @sort_interfaces(i32* %95, i32* %7)
  store %struct.TYPE_9__** %96, %struct.TYPE_9__*** %10, align 8
  %97 = load i32, i32* @proxy, align 4
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.21, i64 0, i64 0), i8* %98)
  %100 = load i32, i32* @proxy, align 4
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %116, %74
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %119

106:                                              ; preds = %102
  %107 = load i32, i32* @proxy, align 4
  %108 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %108, i64 %110
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.22, i64 0, i64 0), i8* %114)
  br label %116

116:                                              ; preds = %106
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %102

119:                                              ; preds = %102
  %120 = load i32, i32* @proxy, align 4
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %122 = load i32, i32* @proxy, align 4
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %124 = load i32, i32* @proxy, align 4
  %125 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %126 = load i32, i32* @proxy, align 4
  %127 = load i8*, i8** %5, align 8
  %128 = call i32 (i32, i8*, ...) @fprintf(i32 %126, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.24, i64 0, i64 0), i8* %127)
  %129 = load i32, i32* @proxy, align 4
  %130 = call i32 (i32, i8*, ...) @fprintf(i32 %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %145, %119
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %131
  %136 = load i32, i32* @proxy, align 4
  %137 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %137, i64 %139
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0), i8* %143)
  br label %145

145:                                              ; preds = %135
  %146 = load i32, i32* %6, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %6, align 4
  br label %131

148:                                              ; preds = %131
  %149 = load i32, i32* @proxy, align 4
  %150 = call i32 (i32, i8*, ...) @fprintf(i32 %149, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %151 = load i32, i32* @proxy, align 4
  %152 = call i32 (i32, i8*, ...) @fprintf(i32 %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %153 = load i32, i32* @proxy, align 4
  %154 = call i32 (i32, i8*, ...) @fprintf(i32 %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %155 = load i32, i32* @proxy, align 4
  %156 = load i8*, i8** %5, align 8
  %157 = call i32 (i32, i8*, ...) @fprintf(i32 %155, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.26, i64 0, i64 0), i8* %156)
  %158 = load i32, i32* @proxy, align 4
  %159 = call i32 (i32, i8*, ...) @fprintf(i32 %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %160

160:                                              ; preds = %174, %148
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %177

164:                                              ; preds = %160
  %165 = load i32, i32* @proxy, align 4
  %166 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %166, i64 %168
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %165, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i8* %172)
  br label %174

174:                                              ; preds = %164
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %6, align 4
  br label %160

177:                                              ; preds = %160
  %178 = load i32, i32* @proxy, align 4
  %179 = call i32 (i32, i8*, ...) @fprintf(i32 %178, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %180 = load i32, i32* @proxy, align 4
  %181 = call i32 (i32, i8*, ...) @fprintf(i32 %180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %182 = load i32, i32* @proxy, align 4
  %183 = call i32 (i32, i8*, ...) @fprintf(i32 %182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %184

184:                                              ; preds = %198, %177
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* %7, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %201

188:                                              ; preds = %184
  %189 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %189, i64 %191
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = call i32 @get_delegation_indirect(%struct.TYPE_9__* %193, %struct.TYPE_9__** null)
  store i32 %194, i32* %8, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %188
  br label %201

197:                                              ; preds = %188
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %6, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %6, align 4
  br label %184

201:                                              ; preds = %196, %184
  %202 = load i32, i32* %8, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %249

204:                                              ; preds = %201
  %205 = load i32, i32* @proxy, align 4
  %206 = load i8*, i8** %5, align 8
  %207 = call i32 (i32, i8*, ...) @fprintf(i32 %205, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0), i8* %206)
  %208 = load i32, i32* @proxy, align 4
  %209 = call i32 (i32, i8*, ...) @fprintf(i32 %208, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %210

210:                                              ; preds = %239, %204
  %211 = load i32, i32* %6, align 4
  %212 = load i32, i32* %7, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %242

214:                                              ; preds = %210
  %215 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %215, i64 %217
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %218, align 8
  %220 = call i32 @get_delegation_indirect(%struct.TYPE_9__* %219, %struct.TYPE_9__** %11)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %214
  %223 = load i32, i32* @proxy, align 4
  %224 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %228 = load i32, i32* %6, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %227, i64 %229
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 0
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 (i32, i8*, ...) @fprintf(i32 %223, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0), i8* %226, i8* %233)
  br label %238

235:                                              ; preds = %214
  %236 = load i32, i32* @proxy, align 4
  %237 = call i32 (i32, i8*, ...) @fprintf(i32 %236, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0))
  br label %238

238:                                              ; preds = %235, %222
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %6, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %6, align 4
  br label %210

242:                                              ; preds = %210
  %243 = load i32, i32* @proxy, align 4
  %244 = call i32 (i32, i8*, ...) @fprintf(i32 %243, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %245 = load i32, i32* @proxy, align 4
  %246 = call i32 (i32, i8*, ...) @fprintf(i32 %245, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %247 = load i32, i32* @proxy, align 4
  %248 = call i32 (i32, i8*, ...) @fprintf(i32 %247, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %249

249:                                              ; preds = %242, %201
  %250 = load i32, i32* @proxy, align 4
  %251 = load i8*, i8** %5, align 8
  %252 = call i32 (i32, i8*, ...) @fprintf(i32 %250, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.31, i64 0, i64 0), i8* %251)
  %253 = load i32, i32* @proxy, align 4
  %254 = call i32 (i32, i8*, ...) @fprintf(i32 %253, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %255 = load i32, i32* @proxy, align 4
  %256 = load i32, i32* %7, align 4
  %257 = sub nsw i32 %256, 1
  %258 = call i32 (i32, i8*, ...) @fprintf(i32 %255, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i64 0, i64 0), i32 %257)
  %259 = load i32, i32* @proxy, align 4
  %260 = call i32 (i32, i8*, ...) @fprintf(i32 %259, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %261 = load i32, i32* @proxy, align 4
  %262 = call i32 (i32, i8*, ...) @fprintf(i32 %261, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i64 0, i64 0))
  %263 = load i32, i32* @proxy, align 4
  %264 = call i32 (i32, i8*, ...) @fprintf(i32 %263, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0))
  %265 = load i32, i32* @proxy, align 4
  %266 = call i32 (i32, i8*, ...) @fprintf(i32 %265, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.35, i64 0, i64 0))
  %267 = load i32, i32* @proxy, align 4
  %268 = load i8*, i8** %5, align 8
  %269 = call i32 (i32, i8*, ...) @fprintf(i32 %267, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.36, i64 0, i64 0), i8* %268)
  %270 = load i32, i32* @proxy, align 4
  %271 = call i32 (i32, i8*, ...) @fprintf(i32 %270, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.37, i64 0, i64 0))
  %272 = load i32, i32* @proxy, align 4
  %273 = call i32 (i32, i8*, ...) @fprintf(i32 %272, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i64 0, i64 0))
  %274 = load i32, i32* @proxy, align 4
  %275 = call i32 (i32, i8*, ...) @fprintf(i32 %274, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.39, i64 0, i64 0))
  %276 = load i32, i32* @proxy, align 4
  %277 = call i32 (i32, i8*, ...) @fprintf(i32 %276, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0))
  %278 = load i32, i32* @proxy, align 4
  %279 = call i32 (i32, i8*, ...) @fprintf(i32 %278, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i64 0, i64 0))
  %280 = load i32, i32* @proxy, align 4
  %281 = call i32 (i32, i8*, ...) @fprintf(i32 %280, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0))
  %282 = load i32, i32* @proxy, align 4
  %283 = call i32 (i32, i8*, ...) @fprintf(i32 %282, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %284 = call i64 (...) @get_stub_mode()
  %285 = load i64, i64* @MODE_Oif, align 8
  %286 = icmp eq i64 %284, %285
  %287 = zext i1 %286 to i64
  %288 = select i1 %286, i32 2, i32 1
  store i32 %288, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %289

289:                                              ; preds = %331, %249
  %290 = load i32, i32* %6, align 4
  %291 = load i32, i32* %7, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %334

293:                                              ; preds = %289
  %294 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %295 = load i32, i32* %6, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %294, i64 %296
  %298 = load %struct.TYPE_9__*, %struct.TYPE_9__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 0
  %303 = load %struct.TYPE_9__*, %struct.TYPE_9__** %302, align 8
  %304 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %305 = load i32, i32* %6, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %304, i64 %306
  %308 = load %struct.TYPE_9__*, %struct.TYPE_9__** %307, align 8
  %309 = icmp ne %struct.TYPE_9__* %303, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %293
  br label %331

311:                                              ; preds = %293
  %312 = load i32, i32* %9, align 4
  %313 = icmp ne i32 %312, 6
  br i1 %313, label %314, label %319

314:                                              ; preds = %311
  %315 = load i32, i32* @proxy, align 4
  %316 = call i32 (i32, i8*, ...) @fprintf(i32 %315, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.42, i64 0, i64 0))
  %317 = load i32, i32* @proxy, align 4
  %318 = call i32 (i32, i8*, ...) @fprintf(i32 %317, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i32 6, i32* %9, align 4
  br label %319

319:                                              ; preds = %314, %311
  %320 = load i32, i32* @proxy, align 4
  %321 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %10, align 8
  %322 = load i32, i32* %6, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %321, i64 %323
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 0
  %327 = load i8*, i8** %326, align 8
  %328 = call i32 (i32, i8*, ...) @fprintf(i32 %320, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.43, i64 0, i64 0), i8* %327)
  %329 = load i32, i32* @proxy, align 4
  %330 = call i32 (i32, i8*, ...) @fprintf(i32 %329, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.44, i64 0, i64 0))
  br label %331

331:                                              ; preds = %319, %310
  %332 = load i32, i32* %6, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %6, align 4
  br label %289

334:                                              ; preds = %289
  %335 = load i32, i32* %9, align 4
  %336 = icmp eq i32 %335, 6
  br i1 %336, label %337, label %344

337:                                              ; preds = %334
  %338 = load i32, i32* @proxy, align 4
  %339 = call i32 (i32, i8*, ...) @fprintf(i32 %338, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %340 = load i32, i32* @proxy, align 4
  %341 = call i32 (i32, i8*, ...) @fprintf(i32 %340, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %342 = load i32, i32* @proxy, align 4
  %343 = call i32 (i32, i8*, ...) @fprintf(i32 %342, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %344

344:                                              ; preds = %337, %334
  %345 = load i32, i32* @proxy, align 4
  %346 = load i8*, i8** %5, align 8
  %347 = call i32 (i32, i8*, ...) @fprintf(i32 %345, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.45, i64 0, i64 0), i8* %346)
  %348 = load i32, i32* @proxy, align 4
  %349 = call i32 (i32, i8*, ...) @fprintf(i32 %348, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %350 = load i32, i32* @proxy, align 4
  %351 = load i8*, i8** %5, align 8
  %352 = call i32 (i32, i8*, ...) @fprintf(i32 %350, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.46, i64 0, i64 0), i8* %351)
  %353 = load i32, i32* @proxy, align 4
  %354 = load i8*, i8** %5, align 8
  %355 = call i32 (i32, i8*, ...) @fprintf(i32 %353, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.47, i64 0, i64 0), i8* %354)
  %356 = load i32, i32* @proxy, align 4
  %357 = load i8*, i8** %5, align 8
  %358 = call i32 (i32, i8*, ...) @fprintf(i32 %356, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i64 0, i64 0), i8* %357)
  %359 = load i32, i32* %8, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %365

361:                                              ; preds = %344
  %362 = load i32, i32* @proxy, align 4
  %363 = load i8*, i8** %5, align 8
  %364 = call i32 (i32, i8*, ...) @fprintf(i32 %362, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0), i8* %363)
  br label %368

365:                                              ; preds = %344
  %366 = load i32, i32* @proxy, align 4
  %367 = call i32 (i32, i8*, ...) @fprintf(i32 %366, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0))
  br label %368

368:                                              ; preds = %365, %361
  %369 = load i32, i32* @proxy, align 4
  %370 = load i8*, i8** %5, align 8
  %371 = call i32 (i32, i8*, ...) @fprintf(i32 %369, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i64 0, i64 0), i8* %370)
  %372 = load i32, i32* @proxy, align 4
  %373 = load i32, i32* %7, align 4
  %374 = call i32 (i32, i8*, ...) @fprintf(i32 %372, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0), i32 %373)
  %375 = load i32, i32* @proxy, align 4
  %376 = load i32, i32* %9, align 4
  %377 = call i32 (i32, i8*, ...) @fprintf(i32 %375, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i64 0, i64 0), i32 %376)
  %378 = load i32, i32* @proxy, align 4
  %379 = load i32, i32* %9, align 4
  %380 = icmp eq i32 %379, 6
  %381 = zext i1 %380 to i64
  %382 = select i1 %380, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0)
  %383 = call i32 (i32, i8*, ...) @fprintf(i32 %378, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i64 0, i64 0), i8* %382)
  %384 = load i32, i32* @proxy, align 4
  %385 = call i32 (i32, i8*, ...) @fprintf(i32 %384, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0))
  %386 = load i32, i32* @proxy, align 4
  %387 = call i32 (i32, i8*, ...) @fprintf(i32 %386, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0))
  %388 = load i32, i32* @proxy, align 4
  %389 = call i32 (i32, i8*, ...) @fprintf(i32 %388, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %390 = load i32, i32* @proxy, align 4
  %391 = call i32 (i32, i8*, ...) @fprintf(i32 %390, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

declare dso_local i32 @print_proxy(i8*, ...) #1

declare dso_local i64 @get_stub_mode(...) #1

declare dso_local i64 @does_any_iface(i32*, i32) #1

declare dso_local i32 @write_exceptions(i32) #1

declare dso_local i32 @write_formatstringsdecl(i32, i32, i32*, i32) #1

declare dso_local i32 @write_stubdescproto(...) #1

declare dso_local i32 @write_proxy_stmts(i32*, i32*) #1

declare dso_local i32 @write_expr_eval_routines(i32, i8*) #1

declare dso_local i32 @write_expr_eval_routine_list(i32, i8*) #1

declare dso_local i32 @write_user_quad_list(i32) #1

declare dso_local i32 @write_stubdesc(i32) #1

declare dso_local i32 @write_procformatstring(i32, i32*, i32) #1

declare dso_local i32 @write_typeformatstring(i32, i32*, i32) #1

declare dso_local %struct.TYPE_9__** @sort_interfaces(i32*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @get_delegation_indirect(%struct.TYPE_9__*, %struct.TYPE_9__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
