; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_binding.c_create_mime_object.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/urlmon/extr_binding.c_create_mime_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@CLSCTX_INPROC_HANDLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"CoCreateInstance failed: %08x\0A\00", align 1
@INET_E_CANNOT_INSTANTIATE_OBJECT = common dso_local global i32 0, align 4
@BINDING_OBJAVAIL = common dso_local global i32 0, align 4
@IID_IPersistMoniker = common dso_local global i32 0, align 4
@IID_IMonikerProp = common dso_local global i32 0, align 4
@MIMETYPEPROP = common dso_local global i32 0, align 4
@CLASSIDPROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not get IPersistMoniker: %08x\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32)* @create_mime_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_mime_object(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %13 = load i32, i32* @CLSCTX_INPROC_HANDLER, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to i8**
  %20 = call i32 @CoCreateInstance(i32* %11, i32* null, i32 %14, i32* %16, i8** %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @FAILED(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @INET_E_CANNOT_INSTANTIATE_OBJECT, align 4
  store i32 %27, i32* %4, align 4
  br label %82

28:                                               ; preds = %3
  %29 = load i32, i32* @BINDING_OBJAVAIL, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = bitcast i32** %8 to i8**
  %38 = call i32 @IUnknown_QueryInterface(i32 %36, i32* @IID_IPersistMoniker, i8** %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @SUCCEEDED(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %28
  %43 = load i32*, i32** %8, align 8
  %44 = bitcast i32** %10 to i8**
  %45 = call i32 @IPersistMoniker_QueryInterface(i32* %43, i32* @IID_IMonikerProp, i8** %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i64 @SUCCEEDED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* @MIMETYPEPROP, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @IMonikerProp_PutProperty(i32* %50, i32 %51, i32 %54)
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* @CLASSIDPROP, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @IMonikerProp_PutProperty(i32* %56, i32 %57, i32 %58)
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @IMonikerProp_Release(i32* %60)
  br label %62

62:                                               ; preds = %49, %42
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @load_doc_mon(%struct.TYPE_4__* %63, i32* %64)
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @IPersistMoniker_Release(i32* %66)
  br label %71

68:                                               ; preds = %28
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @FIXME(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @IBindStatusCallback_OnObjectAvailable(i32 %74, i32* %76, i32 %79)
  %81 = load i32, i32* @S_OK, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %71, %24
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @IUnknown_QueryInterface(i32, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IPersistMoniker_QueryInterface(i32*, i32*, i8**) #1

declare dso_local i32 @IMonikerProp_PutProperty(i32*, i32, i32) #1

declare dso_local i32 @IMonikerProp_Release(i32*) #1

declare dso_local i32 @load_doc_mon(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @IPersistMoniker_Release(i32*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @IBindStatusCallback_OnObjectAvailable(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
