; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_ncacn_np_parse_top_of_tower.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_ncacn_np_parse_top_of_tower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"(%p, %d, %p, %p)\0A\00", align 1
@EPT_S_NOT_REGISTERED = common dso_local global i32 0, align 4
@EPM_PROTOCOL_SMB = common dso_local global i64 0, align 8
@RPC_S_OUT_OF_RESOURCES = common dso_local global i32 0, align 4
@EPM_PROTOCOL_NETBIOS = common dso_local global i64 0, align 8
@RPC_S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8**, i8**)* @rpcrt4_ncacn_np_parse_top_of_tower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrt4_ncacn_np_parse_top_of_tower(i8* %0, i64 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %10, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i8**, i8*** %8, align 8
  %18 = load i8**, i8*** %9, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %16, i8** %17, i8** %18)
  %20 = load i64, i64* %7, align 8
  %21 = icmp ult i64 %20, 24
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @EPT_S_NOT_REGISTERED, align 4
  store i32 %23, i32* %5, align 4
  br label %167

24:                                               ; preds = %4
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 24
  store i8* %26, i8** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sub i64 %27, 24
  store i64 %28, i64* %7, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 8
  br i1 %33, label %56, label %34

34:                                               ; preds = %24
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EPM_PROTOCOL_SMB, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %56, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ugt i64 %43, %44
  br i1 %45, label %56, label %46

46:                                               ; preds = %40
  %47 = load i8*, i8** %6, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %50, 1
  %52 = getelementptr inbounds i8, i8* %47, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46, %40, %34, %24
  %57 = load i32, i32* @EPT_S_NOT_REGISTERED, align 4
  store i32 %57, i32* %5, align 4
  br label %167

58:                                               ; preds = %46
  %59 = load i8**, i8*** %9, align 8
  %60 = icmp ne i8** %59, null
  br i1 %60, label %61, label %82

61:                                               ; preds = %58
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i8* @I_RpcAllocate(i32 %65)
  %67 = load i8**, i8*** %9, align 8
  store i8* %66, i8** %67, align 8
  %68 = load i8**, i8*** %9, align 8
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %61
  %72 = load i32, i32* @RPC_S_OUT_OF_RESOURCES, align 4
  store i32 %72, i32* %5, align 4
  br label %167

73:                                               ; preds = %61
  %74 = load i8**, i8*** %9, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memcpy(i8* %75, i8* %76, i32 %80)
  br label %82

82:                                               ; preds = %73, %58
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 %85
  store i8* %87, i8** %6, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %7, align 8
  %92 = sub i64 %91, %90
  store i64 %92, i64* %7, align 8
  %93 = load i64, i64* %7, align 8
  %94 = icmp ult i64 %93, 24
  br i1 %94, label %95, label %97

95:                                               ; preds = %82
  %96 = load i32, i32* @EPT_S_NOT_REGISTERED, align 4
  store i32 %96, i32* %5, align 4
  br label %167

97:                                               ; preds = %82
  %98 = load i8*, i8** %6, align 8
  %99 = bitcast i8* %98 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %99, %struct.TYPE_2__** %11, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 24
  store i8* %101, i8** %6, align 8
  %102 = load i64, i64* %7, align 8
  %103 = sub i64 %102, 24
  store i64 %103, i64* %7, align 8
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = icmp ne i64 %107, 8
  br i1 %108, label %131, label %109

109:                                              ; preds = %97
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @EPM_PROTOCOL_NETBIOS, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %131, label %115

115:                                              ; preds = %109
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %7, align 8
  %120 = icmp ugt i64 %118, %119
  br i1 %120, label %131, label %121

121:                                              ; preds = %115
  %122 = load i8*, i8** %6, align 8
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = sub i64 %125, 1
  %127 = getelementptr inbounds i8, i8* %122, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %121, %115, %109, %97
  %132 = load i32, i32* @EPT_S_NOT_REGISTERED, align 4
  store i32 %132, i32* %5, align 4
  br label %167

133:                                              ; preds = %121
  %134 = load i8**, i8*** %8, align 8
  %135 = icmp ne i8** %134, null
  br i1 %135, label %136, label %165

136:                                              ; preds = %133
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i8* @I_RpcAllocate(i32 %140)
  %142 = load i8**, i8*** %8, align 8
  store i8* %141, i8** %142, align 8
  %143 = load i8**, i8*** %8, align 8
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %156, label %146

146:                                              ; preds = %136
  %147 = load i8**, i8*** %9, align 8
  %148 = icmp ne i8** %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load i8**, i8*** %9, align 8
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @I_RpcFree(i8* %151)
  %153 = load i8**, i8*** %9, align 8
  store i8* null, i8** %153, align 8
  br label %154

154:                                              ; preds = %149, %146
  %155 = load i32, i32* @RPC_S_OUT_OF_RESOURCES, align 4
  store i32 %155, i32* %5, align 4
  br label %167

156:                                              ; preds = %136
  %157 = load i8**, i8*** %8, align 8
  %158 = load i8*, i8** %157, align 8
  %159 = load i8*, i8** %6, align 8
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = call i32 @memcpy(i8* %158, i8* %159, i32 %163)
  br label %165

165:                                              ; preds = %156, %133
  %166 = load i32, i32* @RPC_S_OK, align 4
  store i32 %166, i32* %5, align 4
  br label %167

167:                                              ; preds = %165, %154, %131, %95, %71, %56, %22
  %168 = load i32, i32* %5, align 4
  ret i32 %168
}

declare dso_local i32 @TRACE(i8*, i8*, i32, i8**, i8**) #1

declare dso_local i8* @I_RpcAllocate(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @I_RpcFree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
