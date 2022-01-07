; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlview.c_test_CreateViewWindow.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlview.c_test_CreateViewWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32 }

@S_OK = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"got (0x%08x)\0A\00", align 1
@IID_IShellView = common dso_local global i32 0, align 4
@IID_CDefView = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"got %p\0A\00", align 1
@FVM_ICON = common dso_local global i32 0, align 4
@E_UNEXPECTED = common dso_local global i32* null, align 8
@test_shellbrowser = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32* null, align 8
@IID_IDropTarget = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"hwnd %p still valid\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"expected %u > %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ref2 = %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CreateViewWindow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CreateViewWindow() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = bitcast %struct.TYPE_5__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = call i32* @SHGetDesktopFolder(i32** %1)
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** @S_OK, align 8
  %16 = icmp eq i32* %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 (i32, i8*, i32*, ...) @ok(i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %18)
  %20 = load i32*, i32** %1, align 8
  %21 = bitcast i32** %5 to i8**
  %22 = call i32* @IShellFolder_CreateViewObject(i32* %20, i32* null, i32* @IID_IShellView, i8** %21)
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** @S_OK, align 8
  %25 = icmp eq i32* %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32*, i32** %7, align 8
  %28 = call i32 (i32, i8*, i32*, ...) @ok(i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %27)
  %29 = load i32*, i32** %5, align 8
  %30 = bitcast i32** %11 to i8**
  %31 = call i32* @IShellView_QueryInterface(i32* %29, i32* @IID_CDefView, i8** %30)
  store i32* %31, i32** %7, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** @S_OK, align 8
  %34 = icmp eq i32* %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 (i32, i8*, i32*, ...) @ok(i32 %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %36)
  %38 = load i32*, i32** %11, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = icmp eq i32* %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 (i32, i8*, i32*, ...) @ok(i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %42)
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @IUnknown_Release(i32* %44)
  %46 = load i32, i32* @FVM_ICON, align 4
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i64 0, i64* %48, align 8
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = call i32* @IShellView_CreateViewWindow(i32* %49, i32* null, %struct.TYPE_6__* %4, i32* null, %struct.TYPE_5__* null, i32** %2)
  store i32* %50, i32** %7, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** @E_UNEXPECTED, align 8
  %53 = icmp eq i32* %51, %52
  %54 = zext i1 %53 to i32
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 (i32, i8*, i32*, ...) @ok(i32 %54, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %55)
  %57 = load i32*, i32** %2, align 8
  %58 = icmp eq i32* %57, null
  %59 = zext i1 %58 to i32
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 (i32, i8*, i32*, ...) @ok(i32 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %60)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %2, align 8
  %62 = load i32*, i32** %5, align 8
  %63 = call i32* @IShellView_CreateViewWindow(i32* %62, i32* null, %struct.TYPE_6__* %4, i32* null, %struct.TYPE_5__* %8, i32** %2)
  store i32* %63, i32** %7, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32*, i32** @E_UNEXPECTED, align 8
  %66 = icmp eq i32* %64, %65
  %67 = zext i1 %66 to i32
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 (i32, i8*, i32*, ...) @ok(i32 %67, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %68)
  %70 = load i32*, i32** %2, align 8
  %71 = icmp eq i32* %70, null
  %72 = zext i1 %71 to i32
  %73 = load i32*, i32** %2, align 8
  %74 = call i32 (i32, i8*, i32*, ...) @ok(i32 %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %73)
  store i32* null, i32** %2, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i32* @IShellView_CreateViewWindow(i32* %75, i32* null, %struct.TYPE_6__* %4, i32* @test_shellbrowser, %struct.TYPE_5__* %8, i32** %2)
  store i32* %76, i32** %7, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = load i32*, i32** @S_OK, align 8
  %79 = icmp eq i32* %77, %78
  br i1 %79, label %87, label %80

80:                                               ; preds = %0
  %81 = load i32*, i32** %7, align 8
  %82 = load i32*, i32** @S_FALSE, align 8
  %83 = icmp eq i32* %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i64 @broken(i32 %84)
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %80, %0
  %88 = phi i1 [ true, %0 ], [ %86, %80 ]
  %89 = zext i1 %88 to i32
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 (i32, i8*, i32*, ...) @ok(i32 %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %90)
  %92 = load i32*, i32** %2, align 8
  %93 = icmp ne i32* %92, null
  %94 = zext i1 %93 to i32
  %95 = load i32*, i32** %2, align 8
  %96 = call i32 (i32, i8*, i32*, ...) @ok(i32 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %95)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %3, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = call i32* @IShellView_CreateViewWindow(i32* %97, i32* null, %struct.TYPE_6__* %4, i32* @test_shellbrowser, %struct.TYPE_5__* %8, i32** %3)
  store i32* %98, i32** %7, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = load i32*, i32** @E_UNEXPECTED, align 8
  %101 = icmp eq i32* %99, %100
  %102 = zext i1 %101 to i32
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 (i32, i8*, i32*, ...) @ok(i32 %102, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %103)
  %105 = load i32*, i32** %3, align 8
  %106 = icmp eq i32* %105, null
  %107 = zext i1 %106 to i32
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 (i32, i8*, i32*, ...) @ok(i32 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %108)
  %110 = load i32*, i32** %5, align 8
  %111 = bitcast i32** %6 to i8**
  %112 = call i32* @IShellView_QueryInterface(i32* %110, i32* @IID_IDropTarget, i8** %111)
  store i32* %112, i32** %7, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = load i32*, i32** @S_OK, align 8
  %115 = icmp eq i32* %113, %114
  %116 = zext i1 %115 to i32
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 (i32, i8*, i32*, ...) @ok(i32 %116, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %117)
  %119 = load i32*, i32** %6, align 8
  %120 = call i32* @IDropTarget_DragLeave(i32* %119)
  store i32* %120, i32** %7, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = load i32*, i32** @S_OK, align 8
  %123 = icmp eq i32* %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i32*, i32** %7, align 8
  %126 = call i32 (i32, i8*, i32*, ...) @ok(i32 %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %125)
  %127 = load i32*, i32** %6, align 8
  %128 = call i32 @IDropTarget_Release(i32* %127)
  %129 = load i32*, i32** %5, align 8
  %130 = call i32 @IShellView_AddRef(i32* %129)
  %131 = load i32*, i32** %5, align 8
  %132 = call i32* @IShellView_Release(i32* %131)
  store i32* %132, i32** %9, align 8
  %133 = load i32*, i32** %5, align 8
  %134 = call i32* @IShellView_DestroyViewWindow(i32* %133)
  store i32* %134, i32** %7, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = load i32*, i32** @S_OK, align 8
  %137 = icmp eq i32* %135, %136
  %138 = zext i1 %137 to i32
  %139 = load i32*, i32** %7, align 8
  %140 = call i32 (i32, i8*, i32*, ...) @ok(i32 %138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %139)
  %141 = load i32*, i32** %2, align 8
  %142 = call i32 @IsWindow(i32* %141)
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = load i32*, i32** %2, align 8
  %147 = call i32 (i32, i8*, i32*, ...) @ok(i32 %145, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %146)
  %148 = load i32*, i32** %5, align 8
  %149 = call i32* @IShellView_Release(i32* %148)
  store i32* %149, i32** %10, align 8
  %150 = load i32*, i32** %9, align 8
  %151 = load i32*, i32** %10, align 8
  %152 = icmp ugt i32* %150, %151
  %153 = zext i1 %152 to i32
  %154 = load i32*, i32** %9, align 8
  %155 = load i32*, i32** %10, align 8
  %156 = call i32 (i32, i8*, i32*, ...) @ok(i32 %153, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %154, i32* %155)
  %157 = load i32*, i32** %10, align 8
  store i32* %157, i32** %9, align 8
  %158 = load i32*, i32** %1, align 8
  %159 = bitcast i32** %5 to i8**
  %160 = call i32* @IShellFolder_CreateViewObject(i32* %158, i32* null, i32* @IID_IShellView, i8** %159)
  store i32* %160, i32** %7, align 8
  %161 = load i32*, i32** %7, align 8
  %162 = load i32*, i32** @S_OK, align 8
  %163 = icmp eq i32* %161, %162
  %164 = zext i1 %163 to i32
  %165 = load i32*, i32** %7, align 8
  %166 = call i32 (i32, i8*, i32*, ...) @ok(i32 %164, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %165)
  store i32* null, i32** %2, align 8
  %167 = load i32*, i32** %5, align 8
  %168 = call i32* @IShellView_CreateViewWindow(i32* %167, i32* null, %struct.TYPE_6__* %4, i32* @test_shellbrowser, %struct.TYPE_5__* %8, i32** %2)
  store i32* %168, i32** %7, align 8
  %169 = load i32*, i32** %7, align 8
  %170 = load i32*, i32** @S_OK, align 8
  %171 = icmp eq i32* %169, %170
  br i1 %171, label %179, label %172

172:                                              ; preds = %87
  %173 = load i32*, i32** %7, align 8
  %174 = load i32*, i32** @S_FALSE, align 8
  %175 = icmp eq i32* %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i64 @broken(i32 %176)
  %178 = icmp ne i64 %177, 0
  br label %179

179:                                              ; preds = %172, %87
  %180 = phi i1 [ true, %87 ], [ %178, %172 ]
  %181 = zext i1 %180 to i32
  %182 = load i32*, i32** %7, align 8
  %183 = call i32 (i32, i8*, i32*, ...) @ok(i32 %181, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %182)
  %184 = load i32*, i32** %2, align 8
  %185 = icmp ne i32* %184, null
  %186 = zext i1 %185 to i32
  %187 = load i32*, i32** %2, align 8
  %188 = call i32 (i32, i8*, i32*, ...) @ok(i32 %186, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %187)
  %189 = load i32*, i32** %2, align 8
  %190 = call i32 @IsWindow(i32* %189)
  %191 = load i32*, i32** %2, align 8
  %192 = call i32 (i32, i8*, i32*, ...) @ok(i32 %190, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %191)
  %193 = load i32*, i32** %5, align 8
  %194 = call i32* @IShellView_Release(i32* %193)
  store i32* %194, i32** %10, align 8
  %195 = load i32*, i32** %10, align 8
  %196 = icmp ne i32* %195, null
  %197 = zext i1 %196 to i32
  %198 = load i32*, i32** %10, align 8
  %199 = call i32 (i32, i8*, i32*, ...) @ok(i32 %197, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %198)
  %200 = load i32*, i32** %10, align 8
  %201 = load i32*, i32** %9, align 8
  %202 = icmp ugt i32* %200, %201
  %203 = zext i1 %202 to i32
  %204 = load i32*, i32** %10, align 8
  %205 = load i32*, i32** %9, align 8
  %206 = call i32 (i32, i8*, i32*, ...) @ok(i32 %203, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %204, i32* %205)
  %207 = load i32*, i32** %2, align 8
  %208 = call i32 @IsWindow(i32* %207)
  %209 = load i32*, i32** %2, align 8
  %210 = call i32 (i32, i8*, i32*, ...) @ok(i32 %208, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %209)
  %211 = load i32*, i32** %2, align 8
  %212 = call i32 @DestroyWindow(i32* %211)
  %213 = load i32*, i32** %1, align 8
  %214 = call i32 @IShellFolder_Release(i32* %213)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @SHGetDesktopFolder(i32**) #2

declare dso_local i32 @ok(i32, i8*, i32*, ...) #2

declare dso_local i32* @IShellFolder_CreateViewObject(i32*, i32*, i32*, i8**) #2

declare dso_local i32* @IShellView_QueryInterface(i32*, i32*, i8**) #2

declare dso_local i32 @IUnknown_Release(i32*) #2

declare dso_local i32* @IShellView_CreateViewWindow(i32*, i32*, %struct.TYPE_6__*, i32*, %struct.TYPE_5__*, i32**) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32* @IDropTarget_DragLeave(i32*) #2

declare dso_local i32 @IDropTarget_Release(i32*) #2

declare dso_local i32 @IShellView_AddRef(i32*) #2

declare dso_local i32* @IShellView_Release(i32*) #2

declare dso_local i32* @IShellView_DestroyViewWindow(i32*) #2

declare dso_local i32 @IsWindow(i32*) #2

declare dso_local i32 @DestroyWindow(i32*) #2

declare dso_local i32 @IShellFolder_Release(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
